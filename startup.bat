@echo off
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
Echo Hang on a sec I'm downloading the latest version of DUMLdore...
adb kill-server
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
SETLOCAL EnableDelayedExpansion
set appver=2.0
cd tools
del dumldore*
del *.bin
del *.md
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
wget https://github.com/brett8883/DUMLdore/archive/master.zip
7za.exe e master.zip
del DUMLdore-*
del master.zip
rmdir dumldore-master
cd ..
cls
call mainmenu.cmd

