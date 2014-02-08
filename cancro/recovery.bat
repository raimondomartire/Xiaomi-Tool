@echo off
cls
@adb reboot bootloader
@fastboot flash recovery C:\XiaomiTool\cancro\recovery\recovery.img
echo Done!
@fastboot reboot
echo Rebooting...
pause
