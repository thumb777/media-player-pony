//
// Created by ColorsWind on 2022/4/16.
//

#ifndef PONYPLAYER_HELPER_H
#define PONYPLAYER_HELPER_H


#define INCLUDE_FFMPEG_BEGIN \
extern "C" {       \
_Pragma("GCC diagnostic push") \
_Pragma("GCC diagnostic ignored \"-Wold-style-cast\"") \
_Pragma("GCC diagnostic ignored \"-Wsign-conversion\"") \
_Pragma("GCC diagnostic ignored \"-Wimplicit-int-conversion\"")

#define INCLUDE_FFMPEG_END \
_Pragma("GCC diagnostic pop") \
}
#endif //PONYPLAYER_HELPER_H
