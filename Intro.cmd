cls
echo ===============================================================================================================================================================
echo "  /$$$$$$                                                  /$$$$$$$             /$$               /$$                                  /$$$$$$       /$$$$$$ ";
echo " /$$__  $$                                                | $$__  $$           | $$              | $$                                 /$$__  $$     /$$$_  $$";
echo "| $$  \__/ /$$   /$$  /$$$$$$   /$$$$$$   /$$$$$$         | $$  \ $$ /$$$$$$  /$$$$$$    /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$       |__/  \ $$    | $$$$\ $$";
echo "|  $$$$$$ | $$  | $$ /$$__  $$ /$$__  $$ /$$__  $$ /$$$$$$| $$$$$$$/|____  $$|_  $$_/   /$$_____/| $$__  $$ /$$__  $$ /$$__  $$        /$$$$$$/    | $$ $$ $$";
echo " \____  $$| $$  | $$| $$  \ $$| $$$$$$$$| $$  \__/|______/| $$____/  /$$$$$$$  | $$    | $$      | $$  \ $$| $$$$$$$$| $$  \__/       /$$____/     | $$\ $$$$";
echo " /$$  \ $$| $$  | $$| $$  | $$| $$_____/| $$              | $$      /$$__  $$  | $$ /$$| $$      | $$  | $$| $$_____/| $$            | $$          | $$ \ $$$";
echo "|  $$$$$$/|  $$$$$$/| $$$$$$$/|  $$$$$$$| $$              | $$     |  $$$$$$$  |  $$$$/|  $$$$$$$| $$  | $$|  $$$$$$$| $$            | $$$$$$$$ /$$|  $$$$$$/";
echo " \______/  \______/ | $$____/  \_______/|__/              |__/      \_______/   \___/   \_______/|__/  |__/ \_______/|__/            |________/|__/ \______/ ";
echo "                    | $$                                                                                                                                     ";
echo "                    | $$               By Brett8883                                                                                                          ";
echo "                    |__/                                                                                                                                     ";
ECHO ===============================================================================================================================================================
ECHO Welcome to Super-Patcher 2.0!
ECHO. 
echo There have been some exciting changes around here, Can I show you around?
ECHO.
echo         [1] Yes, show me the new features 
echo         [2] No, skip this intro and don't ask me again
ECHO. 
choice /C 12 /D 1 /T 99 /M "Please select an option with your keyboard"
If Errorlevel 2 goto skip
If Errorlevel 1 goto intro

:intro
cls 
echo ===============================================================================================================================================================
echo "  /$$$$$$                                                  /$$$$$$$             /$$               /$$                                  /$$$$$$       /$$$$$$ ";
echo " /$$__  $$                                                | $$__  $$           | $$              | $$                                 /$$__  $$     /$$$_  $$";
echo "| $$  \__/ /$$   /$$  /$$$$$$   /$$$$$$   /$$$$$$         | $$  \ $$ /$$$$$$  /$$$$$$    /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$       |__/  \ $$    | $$$$\ $$";
echo "|  $$$$$$ | $$  | $$ /$$__  $$ /$$__  $$ /$$__  $$ /$$$$$$| $$$$$$$/|____  $$|_  $$_/   /$$_____/| $$__  $$ /$$__  $$ /$$__  $$        /$$$$$$/    | $$ $$ $$";
echo " \____  $$| $$  | $$| $$  \ $$| $$$$$$$$| $$  \__/|______/| $$____/  /$$$$$$$  | $$    | $$      | $$  \ $$| $$$$$$$$| $$  \__/       /$$____/     | $$\ $$$$";
echo " /$$  \ $$| $$  | $$| $$  | $$| $$_____/| $$              | $$      /$$__  $$  | $$ /$$| $$      | $$  | $$| $$_____/| $$            | $$          | $$ \ $$$";
echo "|  $$$$$$/|  $$$$$$/| $$$$$$$/|  $$$$$$$| $$              | $$     |  $$$$$$$  |  $$$$/|  $$$$$$$| $$  | $$|  $$$$$$$| $$            | $$$$$$$$ /$$|  $$$$$$/";
echo " \______/  \______/ | $$____/  \_______/|__/              |__/      \_______/   \___/   \_______/|__/  |__/ \_______/|__/            |________/|__/ \______/ ";
echo "                    | $$                                                                                                                                     ";
echo "                    | $$               By Brett8883                                                                                                          ";
echo "                    |__/                                                                                                                                     ";
ECHO ===============================================================================================================================================================
Echo.
Echo In Super-Patcher 2.0 the first page you will see is the main menu
pause
goto whichac.bat

:skip
cls
cd.. 
Echo intro has been read > introREAD.txt
echo %DATE%_%TIME% >> introREAD.txt
cd Super-Tools-%branch%
call whichac.bat