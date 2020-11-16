cmake_minimum_required(VERSION 3.10)
project(memcheck VERSION 0.0)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-switch -Wno-unused-parameter)

include_directories("${PROJECT_SOURCE_DIR}/include")

add_subdirectory(extern)
add_subdirectory(src)
