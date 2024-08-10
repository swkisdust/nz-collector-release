#!/bin/bash

case "$ARCH" in
    "arm")
        TOOLCHAIN_NAME="arm-linux-musleabi-cross"
        ;;
    "armhf")
        TOOLCHAIN_NAME="arm-linux-musleabihf-cross"
        ;;
    "x86_64")
        TOOLCHAIN_NAME="x86_64-linux-musl-native"
        ;;
    "loongarch64")
        TOOLCHAIN_NAME="loongarch64-unknown-linux-musl"
        ;;
    "ppc")
        TOOLCHAIN_NAME="powerpc-linux-musl-cross"
        ;;
    "ppc64")
        TOOLCHAIN_NAME="powerpc64-linux-musl-cross"
        ;;
    "ppc64le")
        TOOLCHAIN_NAME="powerpc64le-linux-musl-cross"
        ;;
    *)
        TOOLCHAIN_NAME="${ARCH}-linux-musl-cross"
        ;;
esac
echo "TOOLCHAIN_NAME=$TOOLCHAIN_NAME" >> $GITHUB_ENV

if [ "$ARCH" = loongarch64 ]; then
    wget https://github.com/musl-cross/musl-cross/releases/download/20240603/${TOOLCHAIN_NAME}.tgz
else
    wget https://musl.cc/${TOOLCHAIN_NAME}.tgz
fi
sudo mkdir /opt/toolchains
sudo tar -zxf ${TOOLCHAIN_NAME}.tgz -C /opt/toolchains
rm ${TOOLCHAIN_NAME}.tgz
echo "/opt/toolchains/${TOOLCHAIN_NAME}/bin" >> $GITHUB_PATH
