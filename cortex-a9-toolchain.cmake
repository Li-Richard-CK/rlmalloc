set(CMAKE_SYSTEM_NAME linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
add_compile_options(-march=armv7-a -mtune=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard)

