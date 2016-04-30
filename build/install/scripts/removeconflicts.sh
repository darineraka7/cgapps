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

#Removing conflicting apks...
rm -rf /system/app/BrowserProviderProxy
rm -rf /system/app/PartnerBookmarksProvider
rm -rf /system/app/Provision
rm -rf /system/app/QuickSearchBox 
rm -rf /system/priv-app/BrowserProviderProxy 
rm -rf /system/priv-app/PartnerBookmarksProvider
rm -rf /system/priv-app/Provision 
rm -rf /system/priv-app/QuickSearchBox

# Removing old GApps files
rm -rf /system/app/FaceLock
rm -rf /system/app/GoogleCalendarSyncAdapter
rm -rf /system/app/GoogleContactsSyncAdapter
rm -rf /system/etc/permissions/com.google.android.camera2.xml
rm -rf /system/etc/permissions/com.google.android.dialer.support.xml
rm -rf /system/etc/permissions/com.google.android.maps.xml
rm -rf /system/etc/permissions/com.google.android.media.effects.xml
rm -rf /system/etc/permissions/com.google.widevine.software.drm.xml
rm -rf /system/etc/preferred-apps/google.xml
rm -rf /system/etc/sysconfig/google.xml
rm -rf /system/etc/sysconfig/google_build.xml
rm -rf /system/etc/updatecmds/google_generic_update.xml
rm -rf /system/framework/com.google.camera2.jar
rm -rf /system/framework/com.google.android.dialer.support.jar
rm -rf /system/framework/com.google.android.maps.jar
rm -rf /system/framework/com.google.android.media.effects.jar
rm -rf /system/framework/com.google.widevine.software.drm.jar
rm -rf /system/lib/libfacelock_jni.so
rm -rf /system/lib/libjni_latinimegoogle.so
rm -rf /system/priv-app/ConfigUpdater/ConfigUpdater.apk
rm -rf /system/priv-app/GoogleBackupTransport
rm -rf /system/priv-app/GoogleFeedback
rm -rf /system/priv-app/GoogleLoginService
rm -rf /system/priv-app/GoogleOneTimeInitializer
rm -rf /system/priv-app/GooglePartnerSetup
rm -rf /system/priv-app/GoogleServicesFramework
rm -rf /system/priv-app/Hangouts
rm -rf /system/priv-app/Phonesky
rm -rf /system/priv-app/PrebuiltGmsCore
rm -rf /system/priv-app/SetupWizard
rm -rf /system/priv-app/Velvet
rm -rf /system/usr/srec/en-US/action.pumpkin
rm -rf /system/usr/srec/en-US/c_fst
rm -rf /system/usr/srec/en-US/class_normalizer.mfar
rm -rf /system/usr/srec/en-US/CLG.prewalk.fst
rm -rf /system/usr/srec/en-US/commands.abnf
rm -rf /system/usr/srec/en-US/compile_grammar.config
rm -rf /system/usr/srec/en-US/config.pumpkin
rm -rf /system/usr/srec/en-US/contacts.abnf
rm -rf /system/usr/srec/en-US/CONTACTS.fst
rm -rf /system/usr/srec/en-US/CONTACTS.syms
rm -rf /system/usr/srec/en-US/dict
rm -rf /system/usr/srec/en-US/dictation.config
rm -rf /system/usr/srec/en-US/dist_belief
rm -rf /system/usr/srec/en-US/dnn
rm -rf /system/usr/srec/en-US/endpointer_dictation.config
rm -rf /system/usr/srec/en-US/endpointer_model.mmap
rm -rf /system/usr/srec/en-US/endpointer_voicesearch.config
rm -rf /system/usr/srec/en-US/g2p.data
rm -rf /system/usr/srec/en-US/g2p_fst
rm -rf /system/usr/srec/en-US/grammar.config
rm -rf /system/usr/srec/en-US/graphemes.syms
rm -rf /system/usr/srec/en-US/hmm_symbols
rm -rf /system/usr/srec/en-US/hmmlist
rm -rf /system/usr/srec/en-US/input_mean_std_dev
rm -rf /system/usr/srec/en-US/lexicon.U.fst
rm -rf /system/usr/srec/en-US/lstm_model.uint8.data
rm -rf /system/usr/srec/en-US/magic_mic.config
rm -rf /system/usr/srec/en-US/metadata
rm -rf /system/usr/srec/en-US/norm_fst
rm -rf /system/usr/srec/en-US/normalizer.mfar
rm -rf /system/usr/srec/en-US/offensive_word_normalizer.mfar
rm -rf /system/usr/srec/en-US/phonelist
rm -rf /system/usr/srec/en-US/phonelist.syms
rm -rf /system/usr/srec/en-US/phonemes.syms
rm -rf /system/usr/srec/en-US/rescoring.fst.louds
rm -rf /system/usr/srec/en-US/semantics.pumpkin
rm -rf /system/usr/srec/en-US/voice_actions.config
rm -rf /system/usr/srec/en-US/voice_actions_compiler.config
rm -rf /system/usr/srec/en-US/wordlist.syms
rm -rf /system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/landmark_group_meta_data.bin
rm -rf /system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-3-tree7-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-r0-ri30.4a-v24-tree7-2-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rn30-ri30.5-v24-tree7-2-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rp30-ri30.5-v24-tree7-2-wmd.bin
rm -rf /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-r.8.1.bin
rm -rf /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-y-r.8.1.bin
rm -rf /system/vendor/pittpatt/models/recognition/face.face.y0-y0-71-N-tree_7-wmd.bin
