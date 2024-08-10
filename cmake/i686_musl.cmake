set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR i686)

set(TOOLCHAIN_PATH /opt/toolchains/i686-linux-musl-cross)

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/i686-linux-musl-gcc)

set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_PATH})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

include_directories(${TOOLCHAIN_PATH}/include)

set(PROTOBUF_C "${TOOLCHAIN_PATH}/lib")
