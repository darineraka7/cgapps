#!/sbin/sh

#    This file is part of The Unofficial CyanogenMod GApps script of @Alexander Lartsev.
#
#    The Unofficial CyanogenMod GApps scripts are free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    These scripts are distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    CGApps sources are used with permission, under the license that it may be re-used to continue the GApps package.
#    This Unofficial CyanogenMod GApps Shell Script includes code derived from the BaNks_Dynamic_GApps work of @MrBaNks,
#    The CGApps are available under the GPLv2 from https://github.com/cgapps/vendor_google/tree/builds

# Functions & variables
file_getprop() { grep "^$2" "$1" | cut -d= -f2; }

build_prop=/system/build.prop

req_android_sdk=23
rom_android_sdk="$(file_getprop $build_prop "ro.build.version.sdk")"
 
# Prevent installation of incorrect gapps version
if [ -z "${req_android_sdk##*$rom_android_sdk*}" ]; then
  echo "Compatible Android version...installing"
else
  echo "Incompatible Android verson...aborting"
  exit 1
fi
