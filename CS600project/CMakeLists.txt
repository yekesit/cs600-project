cmake_minimum_required(VERSION 3.8)
project(CS600project)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp Trie.h Trie.cpp Crawler.cpp)

set(INC_DIR /Users/yeke/curl/curl/include)
set(LINK_DIR /Users/yeke/curl/curl/lib)
include_directories(${INC_DIR})
link_directories(${LINK_DIR})
link_libraries(curl)

add_executable(CS600project ${SOURCE_FILES})
target_link_libraries(CS600project curl)