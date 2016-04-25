#!/sbin/sh
#
# /system/addon.d/30-gapps.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/30-gapps.sh
app/FaceLock/FaceLock.apk
app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk
app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk
etc/permissions/com.google.android.camera.experimental2015.xml
etc/permissions/com.google.android.camera2.xml
etc/permissions/com.google.android.dialer.support.xml
etc/permissions/com.google.android.maps.xml
etc/permissions/com.google.android.media.effects.xml
etc/permissions/com.google.android.pano.v1.xml
etc/permissions/com.google.widevine.software.drm.xml
etc/preferred-apps/google.xml
etc/sysconfig/google.xml
etc/sysconfig/google_build.xml
etc/sysconfig/whitelist_com.android.omadm.service.xml
etc/updatecmds/google_generic_update.txt
framework/com.google.android.camera.experimental2015.jar
framework/com.google.android.camera2.jar
framework/com.google.android.dialer.support.jar
framework/com.google.android.maps.jar
framework/com.google.android.media.effects.jar
framework/com.google.android.pano.v1.jar
framework/com.google.widevine.software.drm.jar
lib64/libfacelock_jni.so
lib64/libfilterpack_facedetect.so
lib64/libjni_keyboarddecoder.so
lib64/libjni_latinime.so
lib64/libjni_latinimegoogle.so
priv-app/GoogleBackupTransport/GoogleBackupTransport.apk
priv-app/GoogleFeedback/GoogleFeedback.apk
priv-app/GoogleLoginService/GoogleLoginService.apk
priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk
priv-app/GooglePartnerSetup/GooglePartnerSetup.apk
priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
priv-app/HotWord/HotWord.apk
priv-app/Phonesky/Phonesky.apk
priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk
priv-app/PrebuiltGmsCore/lib/arm64/libAppDataSearch.so
priv-app/PrebuiltGmsCore/lib/arm64/libappstreaming_jni.so
priv-app/PrebuiltGmsCore/lib/arm64/libconscrypt_gmscore_jni.so
priv-app/PrebuiltGmsCore/lib/arm64/libdirect-audio.so
priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_base.so
priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_support.so
priv-app/PrebuiltGmsCore/lib/arm64/libgmscore.so
priv-app/PrebuiltGmsCore/lib/arm64/libgms-ocrclient.so
priv-app/PrebuiltGmsCore/lib/arm64/libjgcastservice.so
priv-app/PrebuiltGmsCore/lib/arm64/libleveldbjni.so
priv-app/PrebuiltGmsCore/lib/arm64/linNearbyApp.so
priv-app/PrebuiltGmsCore/lib/arm64/libsslwrapper_jni.so
priv-app/PrebuiltGmsCore/lib/arm64/libwearable-selector.so
priv-app/PrebuiltGmsCore/lib/arm64/libWhisper.so
priv-app/SetupWizardSetupWizard.apk
priv-app/Velvet/Velvet.apk
priv-app/Velvet/lib/arm64/librotli.so
priv-app/Velvet/lib/arm64/libcronet.so
priv-app/Velvet/lib/arm64/libframesequence.so
priv-app/Velvet/lib/arm64/libgoogle_speech_jni.so
priv-app/Velvet/lib/arm64/libgoogle_speech_micro_jni.so
priv-app/Velvet/lib/arm64/libnativecrashreporter.so
priv-app/Velvet/lib/arm64/liboffline_actions_jni.so
priv-app/Velvet/lib/arm64/libthird_party_brotil_dec_jni.so
usr/srec/en-US/APP_NAME.fst
usr/srec/en-US/APP_NAME.syms
usr/srec/en-US/c_fst
usr/srec/en-US/class_normalizer.mfar
usr/srec/en-US/CLG.prewalk.fst
usr/srec/en-US/commands.abnf
usr/srec/en-US/compile_grammar.config
usr/srec/en-US/config.pumpkin
usr/srec/en-US/confirmation_bias.fst
usr/srec/en-US/CONTACT_NAME.fst
usr/srec/en-US/CONTACT_NAME.syms
usr/srec/en-US/contacts.abnf
usr/srec/en-US/contacts_bias.fst
usr/srec/en-US/contacts_disambig.fst
usr/srec/en-US/dict
usr/srec/en-US/dictation.config
usr/srec/en-US/dnn
usr/srec/en-US/endpointer_dictation.config
usr/srec/en-US/endpointer_model
usr/srec/en-US/endpointer_model.mmap
usr/srec/en-US/endpointer_voicesearch.config
usr/srec/en-US/ep_portable_mean_stddev
usr/srec/en-US/ep_portable_model.mmap
usr/srec/en-US/g2p.data
usr/srec/en-US/g2p_fst
usr/srec/en-US/grammar.config
usr/srec/en-US/graphemes.syms
usr/srec/en-US/hmmlist
usr/srec/en-US/hmm_symbols
usr/srec/en-US/input_mean_std_dev
usr/srec/en-US/lexicon.U.fst
usr/srec/en-US/lstm_model.uint8.data
usr/srec/en-US/magic_mic.config
usr/srec/en-US/metadata
usr/srec/en-US/monastery_config.pumpkin
usr/srec/en-US/normalizer.mfar
usr/srec/en-US/norm_fst
usr/srec/en-US/offensive_word_normalizer.mfar
usr/srec/en-US/offline_action_data.pb
usr/srec/en-US/phonelist
usr/srec/en-US/phonelist.syms
usr/srec/en-US/phonemes.syms
usr/srec/en-US/portable_lstm
usr/srec/en-US/portable_meanstddev
usr/srec/en-US/pumpkin.mmap
usr/srec/en-US/rescoring.fst.louds
usr/srec/en-US/semantics.pumpkin
usr/srec/en-US/SONG_NAME.fst
usr/srec/en-US/SONG_NAME.syms
usr/srec/en-US/voice_actions.config
usr/srec/en-US/voice_actions_compiler.config
usr/srec/en-US/word_classifier
usr/srec/en-US/wordlist.syms
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
