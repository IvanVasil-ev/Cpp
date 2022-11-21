cmake_minimum_required(VERSION 3.25)

project(Cpp LANGUAGES CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++14")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/build/bin")
set(source_dir "${PROJECT_SOURCE_DIR}/src/")

file(GLOB source_files
    "${source_dir}/*.cpp"
    "${source_dir}/*.hpp"
    "${source_dir}/*/*.cpp"
    "${source_dir}/*/*.hpp"
    "${source_dir}/*/*/*.cpp"
    "${source_dir}/*/*/*.hpp"
)

add_executable(main ${source_files})
