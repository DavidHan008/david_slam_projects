# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/davidhan/Downloads/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/davidhan/Downloads/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/davidhan/david_slam_projects/ch4_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/davidhan/david_slam_projects/ch4_test/build

# Include any dependencies generated for this target.
include CMakeFiles/ch4_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ch4_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ch4_test.dir/flags.make

CMakeFiles/ch4_test.dir/main.cpp.o: CMakeFiles/ch4_test.dir/flags.make
CMakeFiles/ch4_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/davidhan/david_slam_projects/ch4_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ch4_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ch4_test.dir/main.cpp.o -c /home/davidhan/david_slam_projects/ch4_test/main.cpp

CMakeFiles/ch4_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ch4_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/davidhan/david_slam_projects/ch4_test/main.cpp > CMakeFiles/ch4_test.dir/main.cpp.i

CMakeFiles/ch4_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ch4_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/davidhan/david_slam_projects/ch4_test/main.cpp -o CMakeFiles/ch4_test.dir/main.cpp.s

# Object files for target ch4_test
ch4_test_OBJECTS = \
"CMakeFiles/ch4_test.dir/main.cpp.o"

# External object files for target ch4_test
ch4_test_EXTERNAL_OBJECTS =

ch4_test: CMakeFiles/ch4_test.dir/main.cpp.o
ch4_test: CMakeFiles/ch4_test.dir/build.make
ch4_test: CMakeFiles/ch4_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/davidhan/david_slam_projects/ch4_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ch4_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ch4_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ch4_test.dir/build: ch4_test

.PHONY : CMakeFiles/ch4_test.dir/build

CMakeFiles/ch4_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ch4_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ch4_test.dir/clean

CMakeFiles/ch4_test.dir/depend:
	cd /home/davidhan/david_slam_projects/ch4_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/davidhan/david_slam_projects/ch4_test /home/davidhan/david_slam_projects/ch4_test /home/davidhan/david_slam_projects/ch4_test/build /home/davidhan/david_slam_projects/ch4_test/build /home/davidhan/david_slam_projects/ch4_test/build/CMakeFiles/ch4_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ch4_test.dir/depend

