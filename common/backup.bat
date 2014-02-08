@echo off
cls
adb wait-for-device
SET /P BUN= Type the name of the backup (no spaces):
adb backup -apk -noshared - nosystem -f C:\LgTool\Backup\%BUN%.ab
pause
