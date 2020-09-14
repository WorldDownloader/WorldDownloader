#!/bin/bash
MCPELAUNCHER=~/.local/share/mcpelauncher
MODS=$MCPELAUNCHER/mods

VERSION=1.12.0.28
NDK=../android-ndk-r20

mkdir -p build && cd build
(cmake -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake -DANDROID_ABI=x86 -DANDROID_STL=none -DLIBMINECRAFTPE_PATH=$MCPELAUNCHER/versions/$VERSION/libs/libminecraftpe.so .. && make) || exit 1
cd ..

mkdir -p $MODS

cp build/*.so $MODS
cp ../mod-ndk-gnustl/libs/x86/libgnustl_shared.so $MODS
