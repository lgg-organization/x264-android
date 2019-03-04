#!/bin/sh
#
# x264 build script
#
make clean

#SYSROOT=$NDK/platforms/android-14/arch-arm
#TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
#--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- 

SYSROOT=$CVR_SDK_ROOT/prebuilts/toolschain/usr/arm-rkcvr-linux-uclibcgnueabihf/sysroot
TOOLCHAIN=$CVR_SDK_ROOT/prebuilts/toolschain/usr
#--cross-prefix=$TOOLCHAIN/bin/arm-linux- 

./configure --prefix=../x264_build \
--enable-static --enable-pic --disable-asm --disable-cli \
--host=arm-linux \
--cross-prefix=$TOOLCHAIN/bin/arm-linux- \
--sysroot=$SYSROOT

make -j4

make install