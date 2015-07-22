@echo off
:top
set /p Who=<Who
set /p SaidWhat=<JustSaid
set UnCaps=%SaidWhat%
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set SaidWhat=%%SaidWhat:%%i=%%i%%
Set Command=%SaidWhat%


     IF "%Command:~0,1%"=="!" (
        Echo COMMAND >JustSaid
        IF %Command:~0,4%==!SAY (
           echo call ncol "CONSOLE" 52 >>Lobby.bat
           echo echo %UnCaps:~4% >>Lobby.bat
           )
     IF "%Command:~0,6%"=="!CLEAR" (
        echo call ncol "%Who%" 09 >Lobby.bat
        echo echo  cleared the chat. >>Lobby.bat
     )
     IF "%Command:~0,11%"=="!CHECKSTATS" (
        :Tmr
        timeout 5
        if exist rst 
            (
             del rst
            )
        echo set check==1 >OnlineList.bat
        timeout 15
        if exist rst goto tmr
        echo set check==0 >OnlineList.bat 
     )
     )
GOTO top