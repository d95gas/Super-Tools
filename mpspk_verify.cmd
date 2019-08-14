@Echo off
title Super-Patcher 2.0 for %AC%
:main
cls
cd %tpath%
cls
call %header%
ECHO PLEASE TAKE CARE TO FOLLOW INSTRUCTIONS EXACTLY 
ECHO GO SLOW AND READ INSTRUCTIONS CAREFULLY BEFORE ACTING 
ECHO DO NOT SKIP STEPS, DO NOT DO EXTRA STEPS
Echo ****************************************************************************************************************************************************************
pause
cls
call header.bat
Echo Please turn on the %AC% and after it has fully started, connect to the PC
echo.
echo Continue when ready to begin
Echo ****************************************************************************************************************************************************************
Pause
cls
call %header%
Echo Please ensure DUMLdore says you are on firmware %stock% and that this is stock version 
echo. 
echo Then click "Enable ADB" in DUMLdore and wait for ADB to enable 
Echo The front lights will usually flash, turn on, or turn off
echo.
echo then close DUMLdore
Echo. 
Echo Continue once ADB has been enabled and DUMLdore is closed
start %dumldore%
Echo ***************************************************************************************************************************************************************
pause
cls
call header.bat
Echo WORKING PLEASE WAIT... 
adb shell mount -o remount,rw /vendor && Echo Success making vendor read and write
adb shell mkdir /vendor/bin && Echo Success making directory vendor/bin
adb push dummy_verify.sh /vendor/bin/ && echo Success pushing dummy_verify to %ac%
if "%vt%"=="1" adb shell cd /vendor/bin/; chown root:root dummy_verify.sh; chmod 755 dummy_verify.sh; cp /sbin/dji_verify /vendor/bin/original_dji_verify_copy; sync; cd / && echo Success activating dummy_verify.sh
if "%vt%"=="2" adb shell cd /vendor/bin/; chown root:root dummy_verify.sh; chmod 755 dummy_verify.sh; cp /system/bin/dji_verify /vendor/bin/original_dji_verify_copy; sync; cd /
adb shell mount -o remount,ro /vendor && echo Success making vendor read only again. Aircraft requires reboot. Please wait to return to program
adb kill-server 2>>nul
echo STILL WORKING...
PING -n 5 127.0.0.1>nul
cls
call %header%
Echo Please restart your aircraft
Echo.
echo Allow the aircraft to fully restart then reconnect to the PC
echo.
echo Once fully restarted and connected please continue
echo.
Echo ****************************************************************************************************************************************************************
pause
cls
:bind
call header.bat
echo Starting bind step...
PING -n 4 127.0.0.1>nul
cls
call %header%
echo click "Enable ADB" in DUMLdore and then close DUMLdore before proceeding
start %dumldore%
Echo ***************************************************************************************************************************************************************
Pause
cls
call %header%
ECHO WORKING. PLEASE WAIT...
if "%vt%"=="1" adb shell mount -o bind /vendor/bin/dummy_verify.sh /sbin/dji_verify && echo Bind step completed successfully & PING -n 2 127.0.0.1>nul
if "%vt%"=="2" adb shell mount -o bind /vendor/bin/dummy_verify.sh /system/bin/dji_verify && echo Bind step completed successfully & PING -n 2 127.0.0.1>nul
adb kill-server 2>>nul
cls
call %header%
echo Starting flash step...
sleep 2
cls
call header.bat
echo ***DO NOT TURN OFF AIRCRAFT!***
Echo ----------------------------------------------------------------------------------------------------------------------------------------------------------------
echo 1. Please click "Load Firmware" button in DUMLdore 
echo. 
echo 2. Choose the file %fw2%
echo.  
ECHO 3. Then click "Flash Firmware" in DUMLdore
echo.
Echo ****************************************************************************************************************************************************************
ECHO 4.	Please allow DUMLdore to flash to the aircraft.  
Echo        Do not disconnect the %AC% until DUMLdore says it is ok to!
Echo ****************************************************************************************************************************************************************
echo. 
echo 5. Once DUMLdore is finished please restart the aircraft
Echo 
Echo.
echo 6. Once aircraft has restarted fully and connected to PC. Please continue
echo.
start %dumldore%
Echo ****************************************************************************************************************************************************************
pause
cls 
Call %jksonverify%