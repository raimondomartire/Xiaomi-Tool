@echo off
cls
adb wait-for-device
echo Photos will be pull to "C:\XiaomiTool\Pulled\Camera"
echo.
pause
echo Copying camera photos...
@adb pull /sdcard/DCIM/camera/* C:\XiaomiTool\Pulled\Camera\
echo Done!
pause 
