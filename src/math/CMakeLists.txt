cmake_minimum_required(VERSION 3.25)

project(math
    DESCRIPTION "Math algorithms"
    LANGUAGES CXX
)

add_library(math_ObjLib OBJECT)

set_property(
    TARGET math_ObjLib
    PROPERTY SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}"
)

target_sources(math_ObjLib
    PRIVATE
        "math.h"
        "sorting.cpp"
        "sorting.h"
)

target_include_directories(math_ObjLib
  PUBLIC
    "${CMAKE_SOURCE_DIR}/src"
)

target_compile_features(math_ObjLib
  PUBLIC cxx_std_17
)

add_library(Math ALIAS math_ObjLib)
