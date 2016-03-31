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
etc/permissions/com.google.android.camera2.xml
etc/permissions/com.google.android.dialer.support.xml
etc/permissions/com.google.android.maps.xml
etc/permissions/com.google.android.media.effects.xml
etc/permissions/com.google.widevine.software.drm.xml
etc/preferred-apps/google.xml
etc/sysconfig/google.xml
etc/sysconfig/google_build.xml
etc/updatecmds/google_generic_update.xml
framework/com.google.camera2.jar
framework/com.google.android.dialer.support.jar
framework/com.google.android.maps.jar
framework/com.google.android.media.effects.jar
framework/com.google.widevine.software.drm.jar
lib64/libfilterpack_facedetect.so
priv-app/ConfigUpdater/ConfigUpdater.apk
priv-app/GoogleBackupTransport/GoogleBackupTransport.apk
priv-app/GoogleFeedback/GoogleFeedback.apk
priv-app/GoogleLoginService/GoogleLoginService.apk
priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk
priv-app/GooglePartnerSetup/GooglePartnerSetup.apk
priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
priv-app/HotWord/HotWord.apk
priv-app/Phonesky/Phonesky.apk
priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk
priv-app/PrebuiltGmsCore/lib/x86_64/libAppDataSearch.so
priv-app/PrebuiltGmsCore/lib/x86_64/libappstreaming_jni.so
priv-app/PrebuiltGmsCore/lib/x86_64/libconscrypt_gmscore_jni.so
priv-app/PrebuiltGmsCore/lib/x86_64/libdirect-audio.so
priv-app/PrebuiltGmsCore/lib/x86_64/libgcastv2_base.so
priv-app/PrebuiltGmsCore/lib/x86_64/libgcastv2_support.so
priv-app/PrebuiltGmsCore/lib/x86_64/libgmscore.so
priv-app/PrebuiltGmsCore/lib/x86_64/libgms-ocrclient.so
priv-app/PrebuiltGmsCore/lib/x86_64/libjgcastservice.so
priv-app/PrebuiltGmsCore/lib/x86_64/libleveldbjni.so
priv-app/PrebuiltGmsCore/lib/x86_64/linNearbyApp.so
priv-app/PrebuiltGmsCore/lib/x86_64/libsslwrapper_jni.so
priv-app/PrebuiltGmsCore/lib/x86_64/libwearable-selector.so
priv-app/PrebuiltGmsCore/lib/x86_64/libWhisper.so
priv-app/SetupWizard/SetupWizard.apk
priv-app/Velvet/Velvet.apk
priv-app/Velvet/lib/x86_64/librotli.so
priv-app/Velvet/lib/x86_64/libcronet.so
priv-app/Velvet/lib/x86_64/libframesequence.so
priv-app/Velvet/lib/x86_64/libgoogle_speech_jni.so
priv-app/Velvet/lib/x86_64/libgoogle_speech_micro_jni.so
priv-app/Velvet/lib/x86_64/libnativecrashreporter.so
priv-app/Velvet/lib/x86_64/liboffline_actions_jni.so
priv-app/Velvet/lib/x86_64/libthird_party_brotil_dec_jni.so
usr/srec/en-US/c_fst
usr/srec/en-US/clg
usr/srec/en-US/commands.abnf
usr/srec/en-US/compile_grammar.config
usr/srec/en-US/contacts.abnf
usr/srec/en-US/dict
usr/srec/en-US/dictation.config
usr/srec/en-US/dnn
usr/srec/en-US/endpointer_dictation.config
usr/srec/en-US/endpointer_voicesearch.config
usr/srec/en-US/ep_acoustic_model
usr/srec/en-US/g2p_fst
usr/srec/en-US/grammar.config
usr/srec/en-US/hclg_shotword
usr/srec/en-US/hmm_symbols
usr/srec/en-US/hmmlist
usr/srec/en-US/hotword.config
usr/srec/en-US/hotword_classifier
usr/srec/en-US/hotword_normalizer
usr/srec/en-US/hotword_promt.txt
usr/srec/en-US/hotword_word_symbols
usr/srec/en-US/metadata
usr/srec/en-US/norm_fst
usr/srec/en-US/normalizer
usr/srec/en-US/offensive_word_normalizer
usr/srec/en-US/phone_state_map
usr/srec/en-US/phonelist
usr/srec/en-US/rescoring_lm
usr/srec/en-US/wordlist
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
