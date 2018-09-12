rem @echo off
title Восстановление системы
cls
rem start /d "%~d0%~p0" rstrui4.bat
start %windir%\system32\rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,4


start /d %systemroot%\system32 rstrui.exe