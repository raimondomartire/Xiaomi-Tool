@echo off
cls
adb wait-for-device
echo Press ctrl + c when u want to stop it
@adb shell mkdir /sdcard/tmp
adb shell screenrecord /sdcard/tmp/video.mp4
@adb pull /sdcard/tmp/video.mp4 C:\XiaomiTool\Pulled\
@adb shell rm -r /sdcard/tmp
echo You can find your video inside "C:\XiaomiTool\Pulled" folder
echo Done!
pause
