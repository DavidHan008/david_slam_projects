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
CMAKE_SOURCE_DIR = /home/davidhan/david_slam_projects/ch3_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/davidhan/david_slam_projects/ch3_test/build

# Include any dependencies generated for this target.
include CMakeFiles/ch3_use_geometry_main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ch3_use_geometry_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ch3_use_geometry_main.dir/flags.make

CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o: CMakeFiles/ch3_use_geometry_main.dir/flags.make
CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o: ../ch3_use_geometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/davidhan/david_slam_projects/ch3_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o -c /home/davidhan/david_slam_projects/ch3_test/ch3_use_geometry.cpp

CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/davidhan/david_slam_projects/ch3_test/ch3_use_geometry.cpp > CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.i

CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/davidhan/david_slam_projects/ch3_test/ch3_use_geometry.cpp -o CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.s

# Object files for target ch3_use_geometry_main
ch3_use_geometry_main_OBJECTS = \
"CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o"

# External object files for target ch3_use_geometry_main
ch3_use_geometry_main_EXTERNAL_OBJECTS =

ch3_use_geometry_main: CMakeFiles/ch3_use_geometry_main.dir/ch3_use_geometry.cpp.o
ch3_use_geometry_main: CMakeFiles/ch3_use_geometry_main.dir/build.make
ch3_use_geometry_main: CMakeFiles/ch3_use_geometry_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/davidhan/david_slam_projects/ch3_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ch3_use_geometry_main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ch3_use_geometry_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ch3_use_geometry_main.dir/build: ch3_use_geometry_main

.PHONY : CMakeFiles/ch3_use_geometry_main.dir/build

CMakeFiles/ch3_use_geometry_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ch3_use_geometry_main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ch3_use_geometry_main.dir/clean

CMakeFiles/ch3_use_geometry_main.dir/depend:
	cd /home/davidhan/david_slam_projects/ch3_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/davidhan/david_slam_projects/ch3_test /home/davidhan/david_slam_projects/ch3_test /home/davidhan/david_slam_projects/ch3_test/build /home/davidhan/david_slam_projects/ch3_test/build /home/davidhan/david_slam_projects/ch3_test/build/CMakeFiles/ch3_use_geometry_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ch3_use_geometry_main.dir/depend
