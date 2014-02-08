@echo off
cls
echo I disclaim every damage caused using this!
echo Thanks to RaimondoMartire for this
echo Press Enter to continue....
pause
echo ARE YOU SURE?
pause
pause
@adb reboot recovery
@adb wait-for-device
@adb push C:\XiaomiTool\cancro\repartition.sh /tmp
@adb shell chmod 0777 /tmp/repartition.sh
@adb shell /tmp/repartition.sh
pause
