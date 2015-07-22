@echo off
Title lobby
:Read
cls
call Lobby.bat
echo Press any key, or wait 5 Seconds to refresh...
timeout 5 >nul
Goto Read