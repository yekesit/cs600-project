# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yeke/CLionProjects/CS600project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yeke/CLionProjects/CS600project/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CS600project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CS600project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CS600project.dir/flags.make

CMakeFiles/CS600project.dir/main.cpp.o: CMakeFiles/CS600project.dir/flags.make
CMakeFiles/CS600project.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yeke/CLionProjects/CS600project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CS600project.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS600project.dir/main.cpp.o -c /Users/yeke/CLionProjects/CS600project/main.cpp

CMakeFiles/CS600project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS600project.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yeke/CLionProjects/CS600project/main.cpp > CMakeFiles/CS600project.dir/main.cpp.i

CMakeFiles/CS600project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS600project.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yeke/CLionProjects/CS600project/main.cpp -o CMakeFiles/CS600project.dir/main.cpp.s

CMakeFiles/CS600project.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CS600project.dir/main.cpp.o.requires

CMakeFiles/CS600project.dir/main.cpp.o.provides: CMakeFiles/CS600project.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CS600project.dir/build.make CMakeFiles/CS600project.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CS600project.dir/main.cpp.o.provides

CMakeFiles/CS600project.dir/main.cpp.o.provides.build: CMakeFiles/CS600project.dir/main.cpp.o


CMakeFiles/CS600project.dir/Trie.cpp.o: CMakeFiles/CS600project.dir/flags.make
CMakeFiles/CS600project.dir/Trie.cpp.o: ../Trie.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yeke/CLionProjects/CS600project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CS600project.dir/Trie.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS600project.dir/Trie.cpp.o -c /Users/yeke/CLionProjects/CS600project/Trie.cpp

CMakeFiles/CS600project.dir/Trie.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS600project.dir/Trie.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yeke/CLionProjects/CS600project/Trie.cpp > CMakeFiles/CS600project.dir/Trie.cpp.i

CMakeFiles/CS600project.dir/Trie.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS600project.dir/Trie.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yeke/CLionProjects/CS600project/Trie.cpp -o CMakeFiles/CS600project.dir/Trie.cpp.s

CMakeFiles/CS600project.dir/Trie.cpp.o.requires:

.PHONY : CMakeFiles/CS600project.dir/Trie.cpp.o.requires

CMakeFiles/CS600project.dir/Trie.cpp.o.provides: CMakeFiles/CS600project.dir/Trie.cpp.o.requires
	$(MAKE) -f CMakeFiles/CS600project.dir/build.make CMakeFiles/CS600project.dir/Trie.cpp.o.provides.build
.PHONY : CMakeFiles/CS600project.dir/Trie.cpp.o.provides

CMakeFiles/CS600project.dir/Trie.cpp.o.provides.build: CMakeFiles/CS600project.dir/Trie.cpp.o


CMakeFiles/CS600project.dir/Crawler.cpp.o: CMakeFiles/CS600project.dir/flags.make
CMakeFiles/CS600project.dir/Crawler.cpp.o: ../Crawler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yeke/CLionProjects/CS600project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CS600project.dir/Crawler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS600project.dir/Crawler.cpp.o -c /Users/yeke/CLionProjects/CS600project/Crawler.cpp

CMakeFiles/CS600project.dir/Crawler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS600project.dir/Crawler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yeke/CLionProjects/CS600project/Crawler.cpp > CMakeFiles/CS600project.dir/Crawler.cpp.i

CMakeFiles/CS600project.dir/Crawler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS600project.dir/Crawler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yeke/CLionProjects/CS600project/Crawler.cpp -o CMakeFiles/CS600project.dir/Crawler.cpp.s

CMakeFiles/CS600project.dir/Crawler.cpp.o.requires:

.PHONY : CMakeFiles/CS600project.dir/Crawler.cpp.o.requires

CMakeFiles/CS600project.dir/Crawler.cpp.o.provides: CMakeFiles/CS600project.dir/Crawler.cpp.o.requires
	$(MAKE) -f CMakeFiles/CS600project.dir/build.make CMakeFiles/CS600project.dir/Crawler.cpp.o.provides.build
.PHONY : CMakeFiles/CS600project.dir/Crawler.cpp.o.provides

CMakeFiles/CS600project.dir/Crawler.cpp.o.provides.build: CMakeFiles/CS600project.dir/Crawler.cpp.o


# Object files for target CS600project
CS600project_OBJECTS = \
"CMakeFiles/CS600project.dir/main.cpp.o" \
"CMakeFiles/CS600project.dir/Trie.cpp.o" \
"CMakeFiles/CS600project.dir/Crawler.cpp.o"

# External object files for target CS600project
CS600project_EXTERNAL_OBJECTS =

CS600project: CMakeFiles/CS600project.dir/main.cpp.o
CS600project: CMakeFiles/CS600project.dir/Trie.cpp.o
CS600project: CMakeFiles/CS600project.dir/Crawler.cpp.o
CS600project: CMakeFiles/CS600project.dir/build.make
CS600project: CMakeFiles/CS600project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yeke/CLionProjects/CS600project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable CS600project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CS600project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CS600project.dir/build: CS600project

.PHONY : CMakeFiles/CS600project.dir/build

CMakeFiles/CS600project.dir/requires: CMakeFiles/CS600project.dir/main.cpp.o.requires
CMakeFiles/CS600project.dir/requires: CMakeFiles/CS600project.dir/Trie.cpp.o.requires
CMakeFiles/CS600project.dir/requires: CMakeFiles/CS600project.dir/Crawler.cpp.o.requires

.PHONY : CMakeFiles/CS600project.dir/requires

CMakeFiles/CS600project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CS600project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CS600project.dir/clean

CMakeFiles/CS600project.dir/depend:
	cd /Users/yeke/CLionProjects/CS600project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yeke/CLionProjects/CS600project /Users/yeke/CLionProjects/CS600project /Users/yeke/CLionProjects/CS600project/cmake-build-debug /Users/yeke/CLionProjects/CS600project/cmake-build-debug /Users/yeke/CLionProjects/CS600project/cmake-build-debug/CMakeFiles/CS600project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CS600project.dir/depend

