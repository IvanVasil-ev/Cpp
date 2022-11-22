set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/build")

add_executable(main
    "main.cpp"
    "main.h"
)

target_link_libraries(main
    PRIVATE
        Math
)

add_subdirectory(math)
