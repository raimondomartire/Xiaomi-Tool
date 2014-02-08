@echo off
cls
echo I disclaim every damage caused using this!
echo Thanks to M1cha for this
echo Press Enter to continue....
pause
echo ARE YOU SURE?
pause
echo Press ENTER ONLY if you have the backup on your PC!!
pause
@adb reboot recovery
@adb wait-for-device
@adb push C:\XiaomiTool\aris\repartition.sh /tmp
@adb shell chmod 0777 /tmp/repartition.sh
@adb shell /tmp/repartition.sh
echo Done!
echo Now Flash A rom on both partitions
echo to boot up your device!
pause
