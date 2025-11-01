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
    -Werror
    -ffreestanding)

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_definitions(RL_DEBUG)
    add_compile_options(-g -O0)
else()
    add_compile_options(-O2)
endif()

configure_file(
    "${CMAKE_SOURCE_DIR}/default-config.h"
    "${CMAKE_SOURCE_DIR}/include/config.h"
    COPYONLY)

set(rl_sources
    src/error.c
    src/alloc.c
    src/init.c
    src/partition.c
    src/page.c)

add_library(rlmalloc-static STATIC ${rl_sources})
set_target_properties(rlmalloc-static PROPERTIES
    OUTPUT_NAME "rlmalloc-static"
    VERSION ${RLMALLOC_VERSION})
target_include_directories(rlmalloc-static PUBLIC include)
target_link_options(rlmalloc-static PRIVATE
        -T "${PROJECT_SOURCE_DIR}/map-heap-tls.ld"
        -u __rlmalloc_ctor) # AI generated this line only

add_library(rlmalloc-shared SHARED ${rl_sources})
set_target_properties(rlmalloc-shared PROPERTIES
    OUTPUT_NAME "rlmalloc-shared"
    VERSION ${RLMALLOC_VERSION})
target_include_directories(rlmalloc-shared PUBLIC include)
target_link_options(rlmalloc-shared PRIVATE -T "${PROJECT_SOURCE_DIR}/map-heap-tls.ld")

