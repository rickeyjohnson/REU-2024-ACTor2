# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build

# Include any dependencies generated for this target.
include third_party/check/lib/CMakeFiles/compat.dir/depend.make

# Include the progress variables for this target.
include third_party/check/lib/CMakeFiles/compat.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/check/lib/CMakeFiles/compat.dir/flags.make

third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.o: third_party/check/lib/CMakeFiles/compat.dir/flags.make
third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.o: /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/libcompat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.o"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/compat.dir/libcompat.c.o   -c /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/libcompat.c

third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/compat.dir/libcompat.c.i"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/libcompat.c > CMakeFiles/compat.dir/libcompat.c.i

third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/compat.dir/libcompat.c.s"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/libcompat.c -o CMakeFiles/compat.dir/libcompat.c.s

third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.o: third_party/check/lib/CMakeFiles/compat.dir/flags.make
third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.o: /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/fpclassify.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.o"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/compat.dir/fpclassify.c.o   -c /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/fpclassify.c

third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/compat.dir/fpclassify.c.i"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/fpclassify.c > CMakeFiles/compat.dir/fpclassify.c.i

third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/compat.dir/fpclassify.c.s"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib/fpclassify.c -o CMakeFiles/compat.dir/fpclassify.c.s

# Object files for target compat
compat_OBJECTS = \
"CMakeFiles/compat.dir/libcompat.c.o" \
"CMakeFiles/compat.dir/fpclassify.c.o"

# External object files for target compat
compat_EXTERNAL_OBJECTS =

third_party/check/lib/libcompat.a: third_party/check/lib/CMakeFiles/compat.dir/libcompat.c.o
third_party/check/lib/libcompat.a: third_party/check/lib/CMakeFiles/compat.dir/fpclassify.c.o
third_party/check/lib/libcompat.a: third_party/check/lib/CMakeFiles/compat.dir/build.make
third_party/check/lib/libcompat.a: third_party/check/lib/CMakeFiles/compat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libcompat.a"
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && $(CMAKE_COMMAND) -P CMakeFiles/compat.dir/cmake_clean_target.cmake
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/check/lib/CMakeFiles/compat.dir/build: third_party/check/lib/libcompat.a

.PHONY : third_party/check/lib/CMakeFiles/compat.dir/build

third_party/check/lib/CMakeFiles/compat.dir/clean:
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib && $(CMAKE_COMMAND) -P CMakeFiles/compat.dir/cmake_clean.cmake
.PHONY : third_party/check/lib/CMakeFiles/compat.dir/clean

third_party/check/lib/CMakeFiles/compat.dir/depend:
	cd /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp/c/third_party/check/lib /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib /home/reu-actor/actor_ws/build/libsbp_catkin/libsbp-prefix/src/libsbp-build/third_party/check/lib/CMakeFiles/compat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/check/lib/CMakeFiles/compat.dir/depend

