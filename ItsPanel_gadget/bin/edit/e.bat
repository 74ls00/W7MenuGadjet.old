@echo off
title 
cls
set "edr=T:\Program Files\Notepad++\notepad++.exe"
if exist "%edr%" goto ran
exit
:ran
"T:\Program Files\Notepad++\notepad++.exe" "%~d0%~p0..\..\pages\pagee.html"