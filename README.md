# device_lenovo_TB3_710F
device directory for building custom rom for Lenovo TAB3 Essential 710F (wifi&amp;gps only) 

This repo is a kind of sandbox for me to contribute to custom rom building for this device. 
The source is the cm-12.1 branch of https://github.com/andrew264/android_device_lenovo_TB3_710F modified upon the working source of https://github.com/Cyanogenmod-for-Lenovo-Tab2A7-10F/android_device_lenovo_Tab2A710F

Building steps (after creating the build environment):

0. `curl https://storage.googleapis.com/git-repo-downloads/repo > .bin/repo`

1. `repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1`

2. `curl https://raw.githubusercontent.com/szazs89/device_lenovo_TB3_710F/master/roomservice.xml  \
    >.repo/local_manifests/roomservice.xml`

3. `repo sync`

4. connect device through USB, make sure ADB is enabled and /system is mounted,
   then `cd device/lenovo/TB3_710F && sh extract-files.sh`

5. extract `zImage` (kernel) from stock's `boot.img` and put it into
   `device/lenovo/TB3_710F`

6. `USE_CCACHE=1 ./prebuilts/misc/linux-x86/ccache/ccache -M 50G`

7. `USE_CCACHE=1 script $(mktemp /tmp/brunch-XXX.out)` and
`. build/envsetup.sh && brunch TB3_710F`

8. cross your fingers... `if("make completed successfully") TADA :-);
ls -l out/target/product/TB3_710F/cm-12.1-$(date)-UNOFFICIAL-TB3_710F.zip*
else debug :-(`

Changelogs (most recent first):

* replacing ramdisk files for working boot.img (from Tab2A710F)

* replacing TWRP with recovery settings from Tab2A710F

* removing SEPOLICY settings from BoardConfig.mk

* added libxlog, configs, "downgrade" of wpa_supplicant

* some updates from Tab2A710F were added...
