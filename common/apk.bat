@echo off
cls
adb wait-for-device
SET /P APK= Drag your apk file here, then press Enter: 
adb install %APK%
pause
