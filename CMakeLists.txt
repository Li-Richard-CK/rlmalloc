cmake_minimum_required(VERSION 3.12)
project(rlmalloc)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(RLMALLOC_VERSION 1.0.0)

set(CMAKE_BUILD_TYPE "Debug")

add_compile_options(-Wall -Wextra -Werror -ffreestanding -nostdlib)
if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_definitions(RL_DEBUG)
endif()

set(rl_sources
    src/error.c)

add_library(rlmalloc SHARED ${rl_sources})
set_target_properties(rlmalloc PROPERTIES
    VERSION ${RLMALLOC_VERSION}
    SOVERSION 1
    MACOSX_RPATH ON)
target_include_directories(rlmalloc PUBLIC include)

