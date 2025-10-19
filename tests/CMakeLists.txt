cmake_minimum_required(VERSION 3.12)
project(rlmalloc-test)

set(CMAKE_EXPORT_COMPILE_COMMANDS OFF)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_compile_options(
    -Wall
    -Wextra 
    -Werror
    -march=armv8-a
)

add_executable(rlmalloc-page-size-test page-size-test.c)

add_executable(rlmalloc-block-size-test block-size-test.c)

