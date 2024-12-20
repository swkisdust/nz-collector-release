# nz-collector-release
Static prebuilt binaries for [nz-collector](https://codeberg.org/uubulb/nz-collector)

Toolchains:
- https://musl.cc/
- https://github.com/musl-cross/musl-cross (for loongarch64)

Build options:
- `libprotobuf-c`:
```
./configure --disable-shared --enable-static --disable-protoc --disable-largefile
```
