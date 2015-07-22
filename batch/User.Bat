@echo off
set Version=0.1
Title Login:
Echo Welcome to LanChat Version %Version%!
echo.
Echo Please log in....
echo.
set /p MyName= Your Name: 
cls
start ReadChat.bat
call OnlineList.bat
echo Say somthing!
:Chat
If %check%==2 call wait
cls
timeout 1 /nobreak >nul
call Lobby.bat
echo.
set /p Said=%MyName%: 
IF "%Said%"=="hldbEns7r1ng" GOTO Chat
echo echo %MyName%:%Said% >>Lobby.bat
echo %Said%>JustSaid
echo %MyName%>Who
set Said=hldbEns7r1ng
goto Check 

:Check
Call OnlineList.bat 

if %check%==0 GOTO Chat
echo echo %MyName% is online >>lobby.bat
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