��
@shift /0
@echo off
chcp 65001
cls



:start
if exist "tos.txt" set /p read=<tos.txt
if not exist "tos.txt" goto :agree
set /a _1rand=(%random%*120/32768) + 1
set /a _2rand=(%random%*89/32768) + 10
title Quasar Scripts                                                               %_2rand% Ping
if exist "tos.txt" if %read% == yes goto :again
if exist "tos.txt" if %read% == no goto :tos-disagree
:agree
cls
echo Do you agree to the Terms of Service found on the Quasar Scripts website?
echo.
echo     YES      NO
echo.
echo.
set /p tos=  [-] : 

if %tos% == no echo no > tos.txt
if %tos% == yes echo yes > tos.txt
if %tos% == YES echo yes > tos.txt
if %tos% == NO echo no > tos.txt
ping localhost -n 2 >nul
echo.
echo.
echo Decision confirmed.
pause
if %tos% == no exit




:again
if not exist %cd%\UserConfiguration\login.txt goto :ll
if exist %cd%\UserConfiguration\login.txt set /p readlogin=<%cd%\UserConfiguration\login.txt
if %readlogin% == quasar goto :qw 

:ll
cls
color 2
mode 60, 20
cls
echo.
echo.
echo [40;37m   ██████╗ ██╗   ██╗ █████╗ [40;35m███████╗ █████╗ ██████╗ 
echo [40;37m  ██╔═══██╗██║   ██║██╔══██╗[40;35m██╔════╝██╔══██╗██╔══██╗
echo [40;37m  ██║   ██║██║   ██║███████║[40;35m███████╗███████║██████╔╝
echo [40;37m  ██║▄▄ ██║██║   ██║██╔══██║[40;35m╚════██║██╔══██║██╔══██╗
echo [40;37m  ╚██████╔╝╚██████╔╝██║  ██║[40;35m███████║██║  ██║██║  ██║
echo [40;37m   ╚══▀▀═╝  ╚═════╝ ╚═╝  ╚═╝[40;35m╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝                                             
echo  [40;37m    For support leave a comment under the video.
echo.
echo         [40;37m   [[40;33m-[40;37m]  Version: [40;35mV1.3        [40;37m   [[40;33m-[40;37m] 
echo         [40;37m   [[40;33m-[40;37m]  [40;37mServer latency: [40;32m%_2rand%   [40;37m   [[40;33m-[40;37m]                              
echo.

set /p user= [40;37m  User:   [40;35m
echo.
set /p pass= [40;37m  Pass:   [40;35m
echo.
:logging-in
cls
echo.
echo.
echo.
echo.
echo            [40;37m   [[40;33m-[40;37m] Connecting to [40;35m%username% [40;37m [[40;33m-[40;37m] 
ping localhost -n 2 >nul
echo.
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 >nul
if %pass% == quasar if %user% == quasar echo quasar > %cd%\UserConfiguration\login.txt
if %pass% == quasar if %user% == quasar goto :success
echo Please try again...
ping localhost -n 2 >nul
goto :again


:success
cls
echo.
echo.
echo.
echo.
echo.
echo           [40;37m   [[40;33m-[40;37m] %USERNAME% [40;35mConnected Successfully. [40;37m[[40;33m-[40;37m]
ping localhost -n 3 >nul
start QuasarDependencies.exe
pause
exit


:tos-disagree
cls
echo.
echo.
echo You have disagreed to the Terms of Service, redirecting...
echo.
echo.
pause
goto :agree
exit


:qw
mode 60, 20
cls
echo.
echo.
echo.
echo.
echo          [40;37m   [[40;33m-[40;37m]  [40;37m Found login info!  [40;37m   [[40;33m-[40;37m]
ping localhost -n 2 >nul
goto :logging-in2
pause

:ss
cls
echo.
echo.
echo.
echo.
echo           [40;37m   [[40;33m-[40;37m] %USERNAME% [40;35mConnected Successfully. [40;37m[[40;33m-[40;37m]
echo.
echo.
echo.
echo.
ping localhost -n 3 >nul
start QuasarDependencies.exe
pause
exit


:logging-in2
cls
echo.
echo.
echo.
echo.
echo            [40;37m   [[40;33m-[40;37m] Connecting to [40;35m%username% [40;37m [[40;33m-[40;37m] 
ping localhost -n 2 >nul
echo.
goto :ss
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %pass% == quasar if %user% == quasar echo            [40;37m%username% Connected successfully.
ping localhost -n 2 >nul
if %pass% == quasar if %user% == quasar echo quasar > %cd%\UserConfiguration\login.txt
if %pass% == quasar if %user% == quasar goto :success
echo Please try again...
ping localhost -n 2 >nul
goto :again