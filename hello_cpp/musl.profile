target_host=x86_64-linux-musl
standalone_toolchain=/opt/x86_64-linux-musl-native/
cc_compiler=$standalone_toolchain/bin/$target_host-gcc
cxx_compiler=$standalone_toolchain/bin/$target_host-g++

[settings]
arch=x86_64
arch_build=x86_64
build_type=Release
os=Linux
os_build=Linux
compiler=gcc
compiler.libcxx=libstdc++11
compiler.version=10

[env]
CONAN_CMAKE_FIND_ROOT_PATH=$standalone_toolchain/$target_host/
PATH=[$standalone_toolchain/$target_host/bin]
CHOST=$target_host
AR=ar
AS=as
RANLIB=ranlib
LD=ld
STRIP=strip
CC=$cc_compiler
CXX=$cxx_compiler
CXXFLAGS=-I"$standalone_toolchain/include"  -L"$standalone_toolchain/lib"
