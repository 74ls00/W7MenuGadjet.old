@echo off

title -= netsh wlan hostednetwork =-
set ssid=alifw@ya.ru
set passw=12345676

:inf
cls
echo.

:main
netsh wlan show hostednetwork
echo _______________________________________________________________

:menu
echo [T] Set SSID=%ssid% KEY=%passw%
echo.
echo [R] Start  [S] Stop  [W] Show status   [X] Exit
echo.
choice /C TRSWX
if %ERRORLEVEL% == 1 goto set
if %ERRORLEVEL% == 2 goto run
if %ERRORLEVEL% == 3 goto stop
if %ERRORLEVEL% == 4 goto inf
if %ERRORLEVEL% == 5 exit
goto menu

:set
cls
echo.
echo _______________________________________________________________________________
echo.
netsh wlan set hostednetwork mode=allow ssid=alifw@ya.ru key=12345677 keyUsage=persistent
echo _______________________________________________________________________________
echo.
goto menu

:run
cls
echo.
netsh wlan start hostednetwork
echo _______________________________________________________________
goto main

:stop
cls
echo.
netsh wlan stop hostednetwork
echo _______________________________________________________________
goto main


