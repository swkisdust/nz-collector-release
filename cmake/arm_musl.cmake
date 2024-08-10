set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(TOOLCHAIN_PATH /opt/toolchains/arm-linux-musleabi-cross)

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/arm-linux-musleabi-gcc)

set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_PATH})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

include_directories(${TOOLCHAIN_PATH}/include)

set(PROTOBUF_C "${TOOLCHAIN_PATH}/lib")