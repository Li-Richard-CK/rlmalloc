cmake_minimum_required(VERSION 3.12)
project(rlmalloc)

set(CMAKE_EXPORT_COMPILE_COMMANDS OFF)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(RLMALLOC_VERSION 1.0.0)

set(CMAKE_BUILD_TYPE "Debug")

add_compile_options(
    -Wall
    -Wextra
    -Werror)

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_definitions(RL_DEBUG)
    add_compile_options(-g -O0)
else()
    add_compile_options(-O2)
endif()

set(rl_sources
    src/error.c
    src/alloc.c
    src/init.c
    src/partition.c
    src/page.c
    src/ps/thread.c)

add_library(rlmalloc SHARED ${rl_sources})
set_target_properties(rlmalloc PROPERTIES
    VERSION ${RLMALLOC_VERSION})
target_include_directories(rlmalloc PUBLIC include)

