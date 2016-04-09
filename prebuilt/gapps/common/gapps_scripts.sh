#!/sbin/sh
#This file is part of The Unofficial CyanogenMod GApps script of @Alexander Lartsev.
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
# CGApps sources are used with permission, under the license that it may be re-used to continue the Gapps package.
# This Installation Data file for Unofficial CyanogenMod GApps is derived from the CGApps work of @Joey Rizzoli,
# The CGApps are available under the GPLv2 from https://github.com/cgapps/vendor_google/tree/builds
#

good_ffc_device() {
  if cat /proc/cpuinfo |grep -q Victory; then
    return 1
  fi
  if cat /proc/cpuinfo |grep -q herring; then
    return 1
  fi
  if cat /proc/cpuinfo |grep -q sun4i; then
    return 1
  fi
  return 0
}

chmod 755 /system/addon.d/30-gapps.sh
if [ -f "/system/addon.d/faceunlock.sh" ]; then
    chmod 755 /system/addon.d/31-faceunlock.sh
fi
if good_ffc_device && [ -e /system/etc/permissions/android.hardware.camera.front.xml ]; then
  chmod 755 /system/addon.d/31-faceunlock.sh
elif  [ -d /system/vendor/pittpatt/ ]; then
  rm -rf /system/vendor/pittpatt/
  rm -rf /system/app/FaceLock/
  rm  -f /system/lib/libfacelock_jni.so
  rm  -f /system/addon.d/31-faceunlock.sh
fi
rm -rf /tmp/face
