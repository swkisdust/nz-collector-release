# nz-collector-release
Static prebuilt binaries for [nz-collector](https://git.kuzu.uk/nz-collector.git/)

Toolchains:
- https://musl.cc/
- https://github.com/musl-cross/musl-cross (for loongarch64)

Build options:
- `libmircohttpd`:
```
./configure --disable-shared --enable-static --disable-https --disable-postprocessor --disable-dauth --disable-doc --disable-curl --disable-examples --disable-tools --disable-messages --disable-httpupgrade --disable-cookie
```
- `libprotobuf-c`:
```
./configure --disable-protoc --disable-largefile
```
