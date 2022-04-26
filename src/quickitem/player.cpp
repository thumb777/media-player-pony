//
// Created by ColorsWind on 2022/4/21.
//
#include "quickitem.h"
#include "demuxer.h"

#include <QUrl>
#include <QTimer>
#include <QDir>


//#define DEBUG_FLAG_AUTO_OPEN
HurricanePlayer::HurricanePlayer(QQuickItem *parent) : Hurricane(parent), videoPlayWorker() {
    videoThread = new QThread;
    videoThread->setObjectName("VideoThread");
    videoPlayWorker.moveToThread(videoThread);
    videoThread->start();
    connect(this, &HurricanePlayer::signalPlayerInitializing, &videoPlayWorker, &VideoPlayWorker::slotThreadInit);
    connect(this, &HurricanePlayer::signalResume, &videoPlayWorker, &VideoPlayWorker::slotOnWork);
    connect(this, &HurricanePlayer::signalPause, &videoPlayWorker, &VideoPlayWorker::slotPause);
    connect(this, &HurricanePlayer::signalVolumeChanging, &videoPlayWorker, &VideoPlayWorker::slotVolumeChanged);
    connect(this, &HurricanePlayer::signalOpenFile, &videoPlayWorker, &VideoPlayWorker::slotOpenFile);
    connect(&videoPlayWorker, &VideoPlayWorker::signalImageChanged, this, &HurricanePlayer::setImage);
    connect(&videoPlayWorker, &VideoPlayWorker::signalStateChanged, this, &HurricanePlayer::slotStateChanged);
    connect(videoThread, &QThread::destroyed, []{ qDebug() << "Video Thread delete.";});
    emit signalPlayerInitializing();
#ifdef DEBUG_FLAG_AUTO_OPEN
    openFile(QUrl::fromLocalFile(QDir::homePath().append(u"/581518754-1-208.mp4"_qs)).url());
#endif
}


void HurricanePlayer::openFile(const QString &path) {
    if (state == HurricaneState::STOPPED || state == HurricaneState::INVALID) {
        state = HurricaneState::LOADING;
        emit stateChanged();
        if (picture.isValid()) {
            // If picture is valid, its data may be waiting to be sent to GPU.
            // Therefore, we must clear it and wait for this change to sync to renderer.
            setImage(Picture());
            QCoreApplication::processEvents();
        }
        emit signalOpenFile(path);
    }
}

void HurricanePlayer::start() {
    if (state == HurricaneState::PAUSED || state == HurricaneState::STOPPED) {
        state = HurricaneState::PLAYING;
        emit signalResume();
        qDebug() << "HurricanePlayer: Start play video.";
    }
}

void HurricanePlayer::pause() {
    if (state == HurricaneState::PLAYING) {
        state = HurricaneState::PAUSED;
        emit signalPause();
        qDebug() << "HurricanePlayer: Pause.";
    }
}

void HurricanePlayer::stop() {
    if (state == HurricaneState::PLAYING) {
        state = HurricaneState::STOPPED;
        emit signalPause();
        qDebug() << "HurricanePlayer: Stop.";
    } else if (state == HurricaneState::PAUSED) {
        state = HurricaneState::STOPPED;
        qDebug() << "HurricanePlayer: Stop.";
    }
}



HurricanePlayer::~HurricanePlayer() {
    emit signalPause();
    videoThread->quit();
    videoThread->deleteLater();
}


time_point VideoPlayWorker::getProcessedAudioUSecs() {
    return audioOutput->elapsedUSecs() - idleDurationSum;
}

void VideoPlayWorker::syncTo(double pts) {
    auto target = static_cast<int64_t>(pts * 1000 * 1000); // us
    auto current = getProcessedAudioUSecs() + seekPoint; // us
    auto duration = target - current;
    if (duration > 0) {
        QThread::usleep(static_cast<unsigned long>(duration));
    } else {
        qWarning() << "Sleep negative duration" << duration << "us";
    }
}

void VideoPlayWorker::onAudioStateChanged(QAudio::State state) {
    auto curr = audioOutput->elapsedUSecs();
    qDebug() << "QAudioSink State changed:" << state << "Curr" << curr << "Sum" << idleDurationSum;
    switch(state) {
        case QAudio::ActiveState:
            if (idlePoint > 0) {
                idleDurationSum += curr - idlePoint;
                idlePoint = -1;
            } else {
                qDebug() << "VideoPlayerWorker: State changed to ActiveState, but fail to determine last time of IdleState or SuspendState.";
            }
            break;
        case QAudio::SuspendedState:
        case QAudio::StoppedState:
        case QAudio::IdleState:
            // Start: IdleState -> ActiveState
            // Pause: ActiveState -> SuspendedState
            // Resume: SuspendedState -> IdleState -> ActiveState
            if (idlePoint <= 0)
                idlePoint = curr;
            break;
    }
}

void VideoPlayWorker::slotThreadInit() {
    // this function must be called on VideoPlayWorker's thread
    QAudioFormat format;
    format.setSampleRate(44100);
    format.setChannelCount(2);
    format.setSampleFormat(QAudioFormat::Int16);
    audioOutput = new QAudioSink(format, this);
    connect(audioOutput, &QAudioSink::stateChanged, this, &VideoPlayWorker::onAudioStateChanged, Qt::ConnectionType::DirectConnection);
    audioOutput->setVolume(100);
    audioOutput->setBufferSize(19200 * 10);
    audioInput = audioOutput->start();
    audioOutput->suspend();
}

void VideoPlayWorker::slotOnWork() {
    qDebug() << "Start Video Work";
    Picture currFrame;
    pauseRequested = false;
    audioOutput->resume();
    while(!pauseRequested && (currFrame = demuxer->getPicture(true), currFrame.isValid())) {
        demuxer->popPicture();
        emit signalImageChanged(currFrame);
        Picture nextFrame = demuxer->getPicture(true);
        for (int i = 0; i < 5 && audioOutput->bytesFree() > 19200; ++i) {
            Sample sample = demuxer->getSample(true);
            audioInput->write(reinterpret_cast<const char *>(sample.data), sample.len);
            demuxer->popSample();
            sample.free();
        }
        // process all events such as setVolume
        QCoreApplication::processEvents();
        if (nextFrame.isValid()) {
            syncTo(nextFrame.pts);
        }

    }
    audioOutput->suspend();
    pauseRequested = true;
}


void VideoPlayWorker::slotOpenFile(const QString &path) {
    pauseRequested = true;
    seekPoint = 0;
    audioOutput->reset();
    // Note: reset will not clear elapsedUSecs and not change state
    idleDurationSum = audioOutput->elapsedUSecs();
    idlePoint = idleDurationSum;
    QUrl url(path);
    QString localPath = url.toLocalFile();
    qDebug() << "Hurricane Player: Open file" << localPath;
    int ret = demuxer->openFile(localPath.toStdString());
    HurricaneState state;
    if (ret) {
        state = HurricaneState::STOPPED;
        Picture pic = demuxer->getPicture(true);

        emit signalImageChanged(pic);
    } else {
        state = HurricaneState::INVALID;
        qWarning() << "Hurricane Player: Fail to open video." << ret;
    }
    emit signalStateChanged(state);
}
