# Unofficial CyanogenMod GApps

![Logo](http://www.cyanogenmod.org/wp-content/themes/cyanogenmod/images/logo-cid.png)

**Unofficial CyanogenMod Google Apps based on official CGApps with intervention in the code and amendments**

Information
-------------------

These are Google Apps for those who want to install Google Packages on a custom rom.
Remember Apks and Jars files are prebuilt from Google.
All closed source files come from Nexus's factory images.
This contains just the core files needed to setup a fully working Google account,
users will choose which apps they want on their devices.
GApps contain a "quite old" universal Play Service, so the Play Store will download the proper one
for your device asap.
These GApps get weekly updates, feel free to fork and contribute to this, but remember,
Opensource does not mean out-of-respect.
Also NO MIRRORS ALLOWED.

Links
-------------------

All Unofficial CyanogenMod GApps releases [here](https://github.com/AlexLartsev19/cgapps/releases)

Xda Forum Unofficial CyanogenMod GApps Development Thread [here](http://forum.xda-developers.com/android/software/gapps-cgapps-unofficial-t3264174)

Credits
-------------------

- Google
- CyanogenMod
- CGApps
- OpenGApps
- ApkMirror.com

Build
-------------------

You can compile GApps package with GNU make

_make clean_
- Remove output directory

_make arm_
- compile signed flashable GApps package for arm devices

_make arm64_
- compile signed flashable GApps package for arm64 devices

_make x86_
- compile signed flashable GApps package for x86 devices

_make x86_64_
- compile signed flashable GApps package for x86_64 devices
