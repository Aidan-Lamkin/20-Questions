# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_SOURCE_DIR = "/Users/aidan/Documents/CSCI 262/20 Questions"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/20_Questions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/20_Questions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/20_Questions.dir/flags.make

CMakeFiles/20_Questions.dir/animal.cpp.o: CMakeFiles/20_Questions.dir/flags.make
CMakeFiles/20_Questions.dir/animal.cpp.o: ../animal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/20_Questions.dir/animal.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/20_Questions.dir/animal.cpp.o -c "/Users/aidan/Documents/CSCI 262/20 Questions/animal.cpp"

CMakeFiles/20_Questions.dir/animal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/20_Questions.dir/animal.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/aidan/Documents/CSCI 262/20 Questions/animal.cpp" > CMakeFiles/20_Questions.dir/animal.cpp.i

CMakeFiles/20_Questions.dir/animal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/20_Questions.dir/animal.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/aidan/Documents/CSCI 262/20 Questions/animal.cpp" -o CMakeFiles/20_Questions.dir/animal.cpp.s

# Object files for target 20_Questions
20_Questions_OBJECTS = \
"CMakeFiles/20_Questions.dir/animal.cpp.o"

# External object files for target 20_Questions
20_Questions_EXTERNAL_OBJECTS =

20_Questions: CMakeFiles/20_Questions.dir/animal.cpp.o
20_Questions: CMakeFiles/20_Questions.dir/build.make
20_Questions: CMakeFiles/20_Questions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 20_Questions"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/20_Questions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/20_Questions.dir/build: 20_Questions

.PHONY : CMakeFiles/20_Questions.dir/build

CMakeFiles/20_Questions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/20_Questions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/20_Questions.dir/clean

CMakeFiles/20_Questions.dir/depend:
	cd "/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/aidan/Documents/CSCI 262/20 Questions" "/Users/aidan/Documents/CSCI 262/20 Questions" "/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug" "/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug" "/Users/aidan/Documents/CSCI 262/20 Questions/cmake-build-debug/CMakeFiles/20_Questions.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/20_Questions.dir/depend

