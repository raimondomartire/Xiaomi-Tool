@echo off
cls
adb wait-for-device
echo Photos will be pull to "C:\XiaomiTool\Pulled\Camera"
echo.
pause
echo Copying camera photos...
@adb pull /sdcard/DCIM/Camera/*.jpg C:\XiaomiTool\Pulled\Camera\
@adb pull /sdcard/DCIM/Camera/*.mp4 C:\XiaomiTool\Pulled\Camera\
echo Done!
pause 
