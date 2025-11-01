cmake_minimum_required(VERSION 3.12)
project(rlmalloc-test)

set(CMAKE_EXPORT_COMPILE_COMMANDS OFF)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_compile_options(
    -Wall
    -Wextra 
    -Werror
    -g
    -O0
)

set(RLMALLOC_STATIC "${CMAKE_SOURCE_DIR}/../build/librlmalloc-static.a")
set(LINKER_SCRIPT "${CMAKE_SOURCE_DIR}/../map-heap-tls.ld")

add_executable(page-size-test page-size-test.c)
add_executable(block-size-test block-size-test.c)
add_executable(malloc-speed-test-fixed malloc-speed-test-fixed.c)
add_executable(malloc-speed-test-randomized malloc-speed-test-randomized.c)

add_executable(rlmalloc-functionality-test rlmalloc-functionality-test.c)
target_include_directories(rlmalloc-functionality-test PRIVATE ${CMAKE_SOURCE_DIR}/../include)
target_link_libraries(rlmalloc-functionality-test PRIVATE
    -T "${LINKER_SCRIPT}"
    # the lines below are AI generated
    -u __rlmalloc_ctor # also this
    "-Wl,--whole-archive" "${RLMALLOC_STATIC}" "-Wl,--no-whole-archive") # this line saved the entire project
    #"LINKER:-rpath,${CMAKE_SOURCE_DIR}/../build")

