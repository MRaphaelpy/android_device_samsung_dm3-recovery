#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# OrangeFox build vars (lidas pelo envsetup/lunch e pelo OrangeFox_A12.sh)
FDEVICE="dm3q"

if [ -z "$FOX_BUILD_DEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export FOX_BUILD_DEVICE="$FDEVICE"
	export ALLOW_MISSING_DEPENDENCIES=true
	export LC_ALL="C"

	# Samsung
	export FOX_SAMSUNG_DEVICE=1
	export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
	export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

	# Crypto desativado no device tree (usar o userdata decrypt)
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export OF_SKIP_FBE_DECRYPTION=1

	# Ferramentas
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_ENABLE_LPTOOLS=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_DELETE_AROMAFM=1
	export OF_QUICK_BACKUP_LIST="/boot;/dtbo;/vendor_boot;"

	# Tela 1440x3088 -> escala 1080 = 2316; punch-hole central
	export OF_SCREEN_H=2316
	export OF_STATUS_H=100
	export OF_STATUS_INDENT_LEFT=48
	export OF_STATUS_INDENT_RIGHT=48
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_FLASHLIGHT_ENABLE=0

	# Build
	export FOX_BUILD_TYPE=Unofficial
	export OF_MAINTAINER="MRaphaelpy"
fi
