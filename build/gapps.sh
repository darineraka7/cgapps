#!/bin/sh

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
#    This Unofficial CyanogenMod GApps Build Script includes code derived from from the CGApps work of @Joey Rizzoli,
#    The CGApps are available under the GPLv2 from https://github.com/cgapps/vendor_google/tree/builds
#

command -v realpath >/dev/null 2>&1 || { echo "realpath is required but it's not installed, aborting." >&2; exit 1; }
TOP=$(realpath .)
ARCH=$1
PLATFORM=5.1.1
BUILDDATE=$(date +"%Y%m%d%H%M")
ZIPNAME=cgapps-$ARCH-$PLATFORM-$BUILDDATE.zip
MD5NAME=$ZIPNAME.md5
OUT=$TOP/out
BUILD=$TOP/build
INSTALL=$BUILD/install
METAINF=$INSTALL/META-INF
SCRIPTS=$INSTALL/scripts
SIGN=$BUILD/sign
SIGNAPKJAR=$SIGN/signapk.jar
TESTKEY=$SIGN/testkey.pk8
TESTKEYX509=$SIGN/testkey.x509.pem
SOURCES=$TOP/prebuilt/gapps
COMMON=$SOURCES/common
PREBUILT=$SOURCES/$ARCH
GLOG=/tmp/gapps_log

printerr(){
  echo "$(tput setaf 1)$1$(tput sgr 0)"
}

printdone(){
  echo "$(tput setaf 2)$1$(tput sgr 0)"
}

clean(){
    echo "Cleaning up..."
    rm -r $OUT/$ARCH
    rm /tmp/$ZIPNAME
    return $?
}

Gfailed(){
    printerr "Build failed, check $GLOG"
    exit 1
}

create(){
    test -f $GLOG && rm -f $GLOG
    echo "Starting GApps compilation" > $GLOG
    echo "ARCH= $ARCH" >> $GLOG
    echo "OS= $(uname -s -r)" >> $GLOG
    echo "NAME= $(whoami) at $(uname -n)" >> $GLOG
    test -d $OUT || mkdir $OUT;
    test -d $OUT/$ARCH || mkdir -p $OUT/$ARCH
    echo "Build directories are now ready" >> $GLOG
    echo "Getting prebuilts..."
    echo "Copying stuffs" >> $GLOG
    cp -r $PREBUILT $OUT/$ARCH >> $GLOG
    mv $OUT/$ARCH/$ARCH $OUT/$ARCH/arch >> $GLOG
    cp -r $COMMON $OUT/$ARCH >> $GLOG
}

createzip(){
    echo "Copying installation scripts..."
    cp -r $METAINF $OUT/$ARCH/META-INF && echo "META-INF copied" >> $GLOG
    cp -r $SCRIPTS $OUT/$ARCH/scripts && echo "Scripts copied" >> $GLOG
    echo "Creating $ZIPNAME..."
    cd $OUT/$ARCH
    zip -r /tmp/$ZIPNAME . >> $GLOG
    rm -rf $OUT/tmp >> $GLOG
    cd $TOP
    if [ -f /tmp/$ZIPNAME ]; then
        echo "Signing $ZIPNAME..."
        java -Xmx2048m -jar $SIGNAPKJAR -w $TESTKEYX509 $TESTKEY /tmp/$ZIPNAME $OUT/$ZIPNAME >> $GLOG
    else
        printerr "Couldn't zip files!"
        echo "Couldn't find unsigned zip file, aborting" >> $GLOG
        return 1
    fi
}

getmd5(){
    if [ -x $(which md5sum) ]; then
        echo "md5sum is installed, getting md5..." >> $GLOG
        echo "Getting md5sum..."
        GMD5=$(md5sum $OUT/$ZIPNAME)
        echo -e "$GMD5" > $OUT/$MD5NAME
        echo "md5 exported at $OUT/$MD5NAME"
        return 0
    else
        echo "md5sum is not installed, aborting" >> $GLOG
        return 1
    fi
}

clean
create
createzip
getmd5
