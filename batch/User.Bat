@echo off
if not exist OnlineList.bat echo set check=0 >onlinelist.bat
set Version=0.5
Title LanChat %Version%
Echo Welcome to LanChat Version %Version%!
echo.
Echo Please log in....
echo.
Set /p MyName= Username: 
call DecryptPass.bat
cls
echo Say somthing!
:Chat
cls
timeout 1 /nobreak >nul
call Lobby.bat
echo.
set /p Said=%MyName%: 
IF "%Said%"=="hldbEns7r1ng" GOTO Check
echo echo %MyName%:%Said% >>Lobby.bat
echo %Said%>JustSaid
echo %MyName%>Who
set Said=hldbEns7r1ng
goto Check 

:Check
Call OnlineList.bat 

if %check%==0 GOTO Chat
echo echo %MyName% is online >>lobby.bat
echo. >rst
goto wait






:wait
cls
echo Sorry, but an admin has called an online check, and in order to not break anything
echo the admin will wait until everything is done...
echo.
echo.
echo Please wait...
Timeout 5 >nul
call OnlineList.bat
if %check%==0 goto chat
goto wait