@echo off
cls
SET /P PUSH= Drag the file you want to push here, then press ENTER: 
adb push %PUSH% sdcard/
pause
