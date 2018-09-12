@echo off
title Защита системы
cls
rem rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,4
start %windir%\system32\rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,4

rem pause