@echo off
:mainmenu
title Super-Patcher 2.0
cls
call header.bat
echo "                                                    __ __  __  _ __  _   __ __ ___ __  _ _  _                                                                ";
echo "                                                   |  V  |/  \| |  \| | |  V  | __|  \| | || |                                                               ";
echo "                                                   | \_/ | /\ | | | ' | | \_/ | _|| | ' | \/ |                                                               ";
echo "                                                   |_| |_|_||_|_|_|\__| |_| |_|___|_|\__|\__/                                                                ";
Echo "                                                                                                                                                             ";
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------------
ECHO.
echo          WHAT DO YOU WANT TO DO?
echo.
echo                  *[1] Start Super-Patcher!
echo                   [2] Download ^& Flash stock firmware needed for Super-Patcher
echo.
echo                   UTILITIES
echo                   [3] Open DankDroneDownloader by CS2000 to download any other firmware files
echo                   [4] Launch DULMdore by Jezzeb
echo                   [5] Launch jkson fcc mod (Mavic and P4Pv2 only)
echo                   [6] Launch the free NoLimitDronez app
echo.
Choice /c 123456 /M "Please make a section with keyboard"
If Errorlevel 6 goto NLD
If Errorlevel 5 goto jkson
If Errorlevel 4 goto dumldore
If Errorlevel 3 goto getDownloader
If Errorlevel 2 goto flashstock 
If Errorlevel 1 goto StartSP

:flashstock
call flashstock.cmd
goto mainmenu

:getDownloader
echo start getdownloaderMM >> %sppath%\log.txt
cls
call %header%
cd %tpath%
if exist DankDroneDownloader.exe start DankDroneDownloader.exe & cd %stpath% & echo DDD exists >> %stpath%\log.txt & goto mainmenu
Echo Hold on just a sec...
cd %tpath%
%busybox% wget https://github.com/cs2000/DankDroneDownloader/archive/master.zip 2> %sppath%\errorlog.txt
7za.exe e master.zip
start DankDroneDownloader.exe
del master.zip
del /f /q DankDroneDownloader-master
del /f /q ISSUE_TEMPLATE
del /f /q .wget-hsts
del /f /q *.md
cd %stpath%
goto mainmenu


:dumldore
start %dumldore%
goto mainmenu



:jkson
call %jksonbat%
goto mainmenu


:startSp 
cls
call variantchooser.cmd
goto mainmenu

:NLD
start %NLD%
goto mainmenu