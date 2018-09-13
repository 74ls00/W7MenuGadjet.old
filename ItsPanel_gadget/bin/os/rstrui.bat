@echo off
title Восстановление системы
cls
start %windir%\system32\rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,4
start /d %systemroot%\system32 rstrui.exe