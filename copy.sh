#!/bin/bash
rm ~/patchrom/Others/kit/BOOT-EXTRACTED2/zImage
rm -r ~/patchrom/Others/kit/BOOT-EXTRACTED
rm -r ~/patchrom/Others/kit/stable/system/lib/modules/
rm ~/patchrom/Others/kit/stable/boot.img 
mkdir ~/patchrom/Others/kit/stable/system/lib/modules
cp ./arch/arm/boot/zImage ~/patchrom/Others/kit/BOOT-EXTRACTED2/zImage
cp -r ~/patchrom/Others/kit/BOOT-EXTRACTED2 ~/patchrom/Others/kit/BOOT-EXTRACTED
find . -name "*.ko" -exec cp {} ~/patchrom/Others/kit/stable/system/lib/modules \;
cp -f drivers/net/wireless/compat-wireless_R5.SP2.03/net/wireless/cfg80211.ko ~/patchrom/Others/kit/stable/system/lib/modules/cfg80211.ko
cd ~/patchrom/Others/kit
./menu
