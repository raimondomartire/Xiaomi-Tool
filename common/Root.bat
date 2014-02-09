cls
@echo off
cls
adb wait-for-device
echo This will take about 1 minute (max 2)
@adb root
@adb wait-for-device
@adb reboot recovery
@adb wait-for-device
@adb shell mount /system
@adb shell mount /data
@adb shell rm -f /system/bin/su
@adb shell rm -f /system/xbin/su
@adb shell rm -f /system/xbin/daemonsu
@adb shell rm -f /system/bin/.ext/.su
@adb shell rm -f /system/etc/install-recovery.sh
@adb shell rm -f /system/etc/init.d/99SuperSUDaemon
@adb shell rm -f /system/etc/.installed_su_daemon
@adb shell rm -f /system/app/Superuser.apk
@adb shell rm -f /system/app/Superuser.odex
@adb shell rm -f /system/app/SuperUser.apk
@adb shell rm -f /system/app/SuperUser.odex
@adb shell rm -f /system/app/superuser.apk
@adb shell rm -f /system/app/superuser.odex
@adb shell rm -f /system/app/Supersu.apk
@adb shell rm -f /system/app/Supersu.odex
@adb shell rm -f /system/app/SuperSU.apk
@adb shell rm -f /system/app/SuperSU.odex
@adb shell rm -f /system/app/supersu.apk
@adb shell rm -f /system/app/supersu.odex
@adb shell rm -f /data/dalvik-cache/*com.noshufou.android.su*
@adb shell rm -f /data/dalvik-cache/*com.koushikdutta.superuser*
@adb shell rm -f /data/dalvik-cache/*com.mgyun.shua.su*
@adb shell rm -f /data/dalvik-cache/*Superuser.apk*
@adb shell rm -f /data/dalvik-cache/*SuperUser.apk*
@adb shell rm -f /data/dalvik-cache/*superuser.apk*
@adb shell rm -f /data/dalvik-cache/*eu.chainfire.supersu*
@adb shell rm -f /data/dalvik-cache/*Supersu.apk*
@adb shell rm -f /data/dalvik-cache/*SuperSU.apk*
@adb shell rm -f /data/dalvik-cache/*supersu.apk*
@adb shell rm -f /data/dalvik-cache/*.oat
@adb shell rm -f /data/app/com.noshufou.android.su-*
@adb shell rm -f /data/app/com.koushikdutta.superuser-*
@adb shell rm -f /data/app/com.mgyun.shua.su-*
@adb shell rm -f /data/app/eu.chainfire.supersu-*
@adb shell cp /system/app/Maps.apk /Maps.apk
@adb shell cp /system/app/GMS_Maps.apk /GMS_Maps.apk
@adb shell cp /system/app/YouTube.apk /YouTube.apk
@adb shell rm /system/app/Maps.apk
@adb shell rm /system/app/GMS_Maps.apk
@adb shell rm /system/app/YouTube.apk
@adb shell mkdir /tmp/supersu
@adb push C:\XiaomiTool\common\Root\supersu /emmc/
@adb shell mv /emmc/supersu /tmp/
@adb shell mkdir /system/bin/.ext
@adb shell cp /tmp/supersu/arm/su /system/xbin/daemonsu
@adb shell cp /tmp/supersu/arm/su /system/xbin/su
@adb shell cp /tmp/supersu/arm//su /system/bin/.ext/.su
@adb shell cp /tmp/supersu/common/Superuser.apk /system/app/Superuser.apk
@adb shell cp /tmp/supersu/common/install-recovery.sh /system/etc/install-recovery.sh
@adb shell cp /tmp/supersu/common/99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon
@adb shell cp /tmp/supersu/common/Superuser.apk /system/app/
@adb shell cp /Maps.apk /system/app/Maps.apk
@adb shell cp /GMS_Maps.apk /system/app/GMS_Maps.apk
@adb shell cp /YouTube.apk /system/app/YouTube.apk
@adb shell rm /Maps.apk
@adb shell rm /GMS_Maps.apk
@adb shell rm /YouTube.apk
@adb shell chmod 777 /system/bin/.ext
@adb shell chmod 6755 /system/bin/.ext/.su
@adb shell chmod 6755 /system/xbin/su
@adb shell chmod 755 /system/xbin/daemonsu
@adb shell chmod 755 /system/etc/install-recovery.sh
@adb shell chmod 755 /system/etc/init.d/99SuperSUDaemon
@adb shell chmod 644 /system/etc/.installed_su_daemon
@adb shell chmod 644 /system/app/Superuser.apk
@adb shell chmod 644 /system/app/Maps.apk
@adb shell chmod 644 /system/app/GMS_Maps.apk
@adb shell chmod 644 /system/app/YouTube.apk
@adb shell /system/xbin/su --install
@adb shell umount /system
@adb shell umount /data
echo Done!
@adb reboot
pause
