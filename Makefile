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
# CGApps sources are used with permission, under the license that it may be re-used to continue the GApps package.
# This Build Data file for Unofficial CyanogenMod GApps building process is derived from the CGApps work of @Joey Rizzoli,
# The CGApps are available under the GPLv2 from https://github.com/cgapps/vendor_google/tree/builds
#
TOPDIR := .
BUILD_SYSTEM := $(TOPDIR)/build
BUILD_GAPPS := $(BUILD_SYSTEM)/gapps.sh
OUTDIR := $(TOPDIR)/out
LOG_BUILD := /tmp/gapps_log

clean :
	@rm -fr $(OUTDIR)
	@echo "$(tput setaf 2)Out directory removed!$(tput sgr 0)"

arm :
	@echo "Compiling signed GApps package for arm devices..."
	@bash $(BUILD_GAPPS) arm 2>&1

arm64 :
	@echo "Compiling signed GApps package for arm64 devices..."
	@bash $(BUILD_GAPPS) arm64 2>&1

x86 :
	@echo "Compiling signed GApps package for x86 devices..."
	@bash $(BUILD_GAPPS) x86 2>&1

x86_64 :
	@echo "Compiling signed GApps package for x86_64 devices..."
	@bash $(BUILD_GAPPS) x86_64 2>&1
