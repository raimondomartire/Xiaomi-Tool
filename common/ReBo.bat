@echo off
cls
adb wait-for-device
@adb reboot bootloader
pause
