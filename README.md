# nz-collector-release
Static prebuilt binaries for [nz-collector](https://git.kuzu.uk/nz-collector.git/)

Toolchains:
- https://musl.cc/
- https://github.com/musl-cross/musl-cross (for loongarch64)

Build options:
- `libprotobuf-c`:
```
./configure --disable-shared --enable-static --disable-protoc --disable-largefile
```
