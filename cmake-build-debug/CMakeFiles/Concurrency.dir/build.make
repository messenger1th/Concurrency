# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\WorkDirectory\Concurrency

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\WorkDirectory\Concurrency\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Concurrency.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Concurrency.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Concurrency.dir/flags.make

CMakeFiles/Concurrency.dir/main.cpp.obj: CMakeFiles/Concurrency.dir/flags.make
CMakeFiles/Concurrency.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\WorkDirectory\Concurrency\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Concurrency.dir/main.cpp.obj"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Concurrency.dir\main.cpp.obj -c D:\WorkDirectory\Concurrency\main.cpp

CMakeFiles/Concurrency.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Concurrency.dir/main.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\WorkDirectory\Concurrency\main.cpp > CMakeFiles\Concurrency.dir\main.cpp.i

CMakeFiles/Concurrency.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Concurrency.dir/main.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\WorkDirectory\Concurrency\main.cpp -o CMakeFiles\Concurrency.dir\main.cpp.s

CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.obj: CMakeFiles/Concurrency.dir/flags.make
CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.obj: ../ThreadSafeQueue/ThreadSafeQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\WorkDirectory\Concurrency\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.obj"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Concurrency.dir\ThreadSafeQueue\ThreadSafeQueue.cpp.obj -c D:\WorkDirectory\Concurrency\ThreadSafeQueue\ThreadSafeQueue.cpp

CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\WorkDirectory\Concurrency\ThreadSafeQueue\ThreadSafeQueue.cpp > CMakeFiles\Concurrency.dir\ThreadSafeQueue\ThreadSafeQueue.cpp.i

CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\WorkDirectory\Concurrency\ThreadSafeQueue\ThreadSafeQueue.cpp -o CMakeFiles\Concurrency.dir\ThreadSafeQueue\ThreadSafeQueue.cpp.s

# Object files for target Concurrency
Concurrency_OBJECTS = \
"CMakeFiles/Concurrency.dir/main.cpp.obj" \
"CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.obj"

# External object files for target Concurrency
Concurrency_EXTERNAL_OBJECTS =

Concurrency.exe: CMakeFiles/Concurrency.dir/main.cpp.obj
Concurrency.exe: CMakeFiles/Concurrency.dir/ThreadSafeQueue/ThreadSafeQueue.cpp.obj
Concurrency.exe: CMakeFiles/Concurrency.dir/build.make
Concurrency.exe: CMakeFiles/Concurrency.dir/linklibs.rsp
Concurrency.exe: CMakeFiles/Concurrency.dir/objects1.rsp
Concurrency.exe: CMakeFiles/Concurrency.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\WorkDirectory\Concurrency\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Concurrency.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Concurrency.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Concurrency.dir/build: Concurrency.exe
.PHONY : CMakeFiles/Concurrency.dir/build

CMakeFiles/Concurrency.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Concurrency.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Concurrency.dir/clean

CMakeFiles/Concurrency.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\WorkDirectory\Concurrency D:\WorkDirectory\Concurrency D:\WorkDirectory\Concurrency\cmake-build-debug D:\WorkDirectory\Concurrency\cmake-build-debug D:\WorkDirectory\Concurrency\cmake-build-debug\CMakeFiles\Concurrency.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Concurrency.dir/depend

