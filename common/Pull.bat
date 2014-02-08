@echo off
cls
echo Push a file "to C:\LgTool\Pulled"
SET /P FIDIR= Type here File path (It can NOT contain spaces) :
adb pull %FIDIR% C:\LgTool\Pulled\
pause
