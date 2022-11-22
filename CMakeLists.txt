cmake_minimum_required(VERSION 3.25)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

project(cpp
    LANGUAGES CXX
    DESCRIPTION "Simple project with C++ code"
)

if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR "Please do out-of-source builds.\n"
                        "Cleanup: \"rm -rf CMake CMakeCache.txt CMakeFiles/\"")
endif ()

add_subdirectory(src)
