# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aaronpeng/Desktop/SE/PP/PonyPlayer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug

# Include any dependencies generated for this target.
include src/view/CMakeFiles/view.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/view/CMakeFiles/view.dir/compiler_depend.make

# Include the progress variables for this target.
include src/view/CMakeFiles/view.dir/progress.make

# Include the compile flags for this target's objects.
include src/view/CMakeFiles/view.dir/flags.make

src/view/meta_types/qt6view_metatypes.json.gen: /Users/aaronpeng/Qt/6.2.4/macos/./libexec/moc
src/view/meta_types/qt6view_metatypes.json.gen: src/view/meta_types/view_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running moc --collect-json for target view"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/moc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/meta_types/qt6view_metatypes.json.gen --collect-json @/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/meta_types/view_json_file_list.txt
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E copy_if_different /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/meta_types/qt6view_metatypes.json.gen /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/meta_types/qt6view_metatypes.json

src/view/meta_types/qt6view_metatypes.json: src/view/meta_types/qt6view_metatypes.json.gen
	@$(CMAKE_COMMAND) -E touch_nocreate src/view/meta_types/qt6view_metatypes.json

src/view/view_qmltyperegistrations.cpp: src/view/qmltypes/view_foreign_types.txt
src/view/view_qmltyperegistrations.cpp: src/view/meta_types/qt6view_metatypes.json
src/view/view_qmltyperegistrations.cpp: /Users/aaronpeng/Qt/6.2.4/macos/./libexec/qmltyperegistrar
src/view/view_qmltyperegistrations.cpp: /Users/aaronpeng/Qt/6.2.4/macos/lib/metatypes/qt6qml_relwithdebinfo_metatypes.json
src/view/view_qmltyperegistrations.cpp: /Users/aaronpeng/Qt/6.2.4/macos/lib/metatypes/qt6core_relwithdebinfo_metatypes.json
src/view/view_qmltyperegistrations.cpp: /Users/aaronpeng/Qt/6.2.4/macos/lib/metatypes/qt6network_relwithdebinfo_metatypes.json
src/view/view_qmltyperegistrations.cpp: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Automatic QML type registration for target view"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmltyperegistrar --generate-qmltypes=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --import-name=view --major-version=1 --minor-version=0 @/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/qmltypes/view_foreign_types.txt -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_qmltyperegistrations.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/meta_types/qt6view_metatypes.json
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.generated
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.generated/view.qmltypes

src/view/view.qmltypes: src/view/view_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/view/view.qmltypes

src/view/.rcc/qmlcache/view_main_qml.cpp: /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen
src/view/.rcc/qmlcache/view_main_qml.cpp: ../src/view/main.qml
src/view/.rcc/qmlcache/view_main_qml.cpp: src/view/.rcc/qmake_view.qrc
src/view/.rcc/qmlcache/view_main_qml.cpp: src/view/.rcc/view_raw_qml_0.qrc
src/view/.rcc/qmlcache/view_main_qml.cpp: src/view/view.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating .rcc/qmlcache/view_main_qml.cpp"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen --resource-path /view/main.qml -i /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmake_view.qrc --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/view_raw_qml_0.qrc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_main_qml.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view/main.qml

src/view/.rcc/qmlcache/view_PonyBody_qml.cpp: /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen
src/view/.rcc/qmlcache/view_PonyBody_qml.cpp: ../src/view/PonyBody.qml
src/view/.rcc/qmlcache/view_PonyBody_qml.cpp: src/view/.rcc/qmake_view.qrc
src/view/.rcc/qmlcache/view_PonyBody_qml.cpp: src/view/.rcc/view_raw_qml_0.qrc
src/view/.rcc/qmlcache/view_PonyBody_qml.cpp: src/view/view.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating .rcc/qmlcache/view_PonyBody_qml.cpp"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen --resource-path /view/PonyBody.qml -i /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmake_view.qrc --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/view_raw_qml_0.qrc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyBody_qml.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view/PonyBody.qml

src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp: /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen
src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp: ../src/view/PonyFooter.qml
src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp: src/view/.rcc/qmake_view.qrc
src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp: src/view/.rcc/view_raw_qml_0.qrc
src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp: src/view/view.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating .rcc/qmlcache/view_PonyFooter_qml.cpp"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen --resource-path /view/PonyFooter.qml -i /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmake_view.qrc --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/view_raw_qml_0.qrc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view/PonyFooter.qml

src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp: /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen
src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp: ../src/view/MediaInfo.qml
src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp: src/view/.rcc/qmake_view.qrc
src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp: src/view/.rcc/view_raw_qml_0.qrc
src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp: src/view/view.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating .rcc/qmlcache/view_MediaInfo_qml.cpp"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen --resource-path /view/MediaInfo.qml -i /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmake_view.qrc --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/view_raw_qml_0.qrc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view/MediaInfo.qml

src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp: /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen
src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp: ../src/view/interfacefunctions.js
src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp: src/view/.rcc/qmake_view.qrc
src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp: src/view/.rcc/view_raw_qml_0.qrc
src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp: src/view/view.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating .rcc/qmlcache/view_interfacefunctions_js.cpp"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Users/aaronpeng/Qt/6.2.4/macos/libexec/qmlcachegen --resource-path /view/interfacefunctions.js -i /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view.qmltypes --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmake_view.qrc --resource /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/view_raw_qml_0.qrc -o /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view/interfacefunctions.js

src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o: src/view/view_autogen/mocs_compilation.cpp
src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o -MF CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_autogen/mocs_compilation.cpp

src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_autogen/mocs_compilation.cpp > CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.i

src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_autogen/mocs_compilation.cpp -o CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.s

src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o: src/view/view_viewPlugin.cpp
src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o -MF CMakeFiles/view.dir/view_viewPlugin.cpp.o.d -o CMakeFiles/view.dir/view_viewPlugin.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_viewPlugin.cpp

src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/view_viewPlugin.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_viewPlugin.cpp > CMakeFiles/view.dir/view_viewPlugin.cpp.i

src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/view_viewPlugin.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_viewPlugin.cpp -o CMakeFiles/view.dir/view_viewPlugin.cpp.s

src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o: src/view/view_qmltyperegistrations.cpp
src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o -MF CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o.d -o CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_qmltyperegistrations.cpp

src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/view_qmltyperegistrations.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_qmltyperegistrations.cpp > CMakeFiles/view.dir/view_qmltyperegistrations.cpp.i

src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/view_qmltyperegistrations.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/view_qmltyperegistrations.cpp -o CMakeFiles/view.dir/view_qmltyperegistrations.cpp.s

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o: src/view/.rcc/qmlcache/view_main_qml.cpp
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o -MF CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o.d -o CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_main_qml.cpp

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_main_qml.cpp > CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.i

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_main_qml.cpp -o CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.s

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o: src/view/.rcc/qmlcache/view_PonyBody_qml.cpp
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o -MF CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o.d -o CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyBody_qml.cpp

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyBody_qml.cpp > CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.i

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyBody_qml.cpp -o CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.s

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o: src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o -MF CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o.d -o CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp > CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.i

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp -o CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.s

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o: src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o -MF CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o.d -o CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp > CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.i

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp -o CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.s

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o: src/view/CMakeFiles/view.dir/flags.make
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o: src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp
src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o: src/view/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o -MF CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o.d -o CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o -c /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.i"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp > CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.i

src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.s"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp -o CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.s

# Object files for target view
view_OBJECTS = \
"CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/view.dir/view_viewPlugin.cpp.o" \
"CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o" \
"CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o" \
"CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o" \
"CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o" \
"CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o" \
"CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o"

# External object files for target view
view_EXTERNAL_OBJECTS =

src/view/libview.a: src/view/CMakeFiles/view.dir/view_autogen/mocs_compilation.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/view_viewPlugin.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/view_qmltyperegistrations.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_main_qml.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyBody_qml.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_PonyFooter_qml.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_MediaInfo_qml.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/.rcc/qmlcache/view_interfacefunctions_js.cpp.o
src/view/libview.a: src/view/CMakeFiles/view.dir/build.make
src/view/libview.a: src/view/CMakeFiles/view.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX static library libview.a"
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && $(CMAKE_COMMAND) -P CMakeFiles/view.dir/cmake_clean_target.cmake
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/view.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/view/CMakeFiles/view.dir/build: src/view/libview.a
.PHONY : src/view/CMakeFiles/view.dir/build

src/view/CMakeFiles/view.dir/clean:
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view && $(CMAKE_COMMAND) -P CMakeFiles/view.dir/cmake_clean.cmake
.PHONY : src/view/CMakeFiles/view.dir/clean

src/view/CMakeFiles/view.dir/depend: src/view/.rcc/qmlcache/view_MediaInfo_qml.cpp
src/view/CMakeFiles/view.dir/depend: src/view/.rcc/qmlcache/view_PonyBody_qml.cpp
src/view/CMakeFiles/view.dir/depend: src/view/.rcc/qmlcache/view_PonyFooter_qml.cpp
src/view/CMakeFiles/view.dir/depend: src/view/.rcc/qmlcache/view_interfacefunctions_js.cpp
src/view/CMakeFiles/view.dir/depend: src/view/.rcc/qmlcache/view_main_qml.cpp
src/view/CMakeFiles/view.dir/depend: src/view/meta_types/qt6view_metatypes.json
src/view/CMakeFiles/view.dir/depend: src/view/meta_types/qt6view_metatypes.json.gen
src/view/CMakeFiles/view.dir/depend: src/view/view.qmltypes
src/view/CMakeFiles/view.dir/depend: src/view/view_qmltyperegistrations.cpp
	cd /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aaronpeng/Desktop/SE/PP/PonyPlayer /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/src/view /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view /Users/aaronpeng/Desktop/SE/PP/PonyPlayer/debug/src/view/CMakeFiles/view.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/view/CMakeFiles/view.dir/depend

