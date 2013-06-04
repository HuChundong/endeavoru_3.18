# Script taken from Imoseyon and modified by LorD CLockaN #


#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-2011/bin/
#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.5.4/bin/
#TOOLCHAIN_PREFIX=arm-eabi-

PATH=$PATH:~/android/toolchains/arm-a9-eabi/bin/
export CCOMPILER=~/android/toolchains/arm-a9-eabi/bin/arm-a9-eabi-
make ARCH=arm ap33_android_cpuquiet_defconfig

make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER

make ARCH=arm CROSS_COMPILE=~/android/toolchains/arm-a9-eabi/bin/arm-a9-eabi- -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` clean -j20

make ARCH=arm CROSS_COMPILE=~/android/toolchains/arm-a9-eabi/bin/arm-a9-eabi- -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20

sh copy.sh;
echo "";
echo "COMPILING FINISHED!!!";
echo "";
echo "Press any key to do a \"make clean\" or CTRL+C to skip it";
read;
alias make='make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER'
#make clean
