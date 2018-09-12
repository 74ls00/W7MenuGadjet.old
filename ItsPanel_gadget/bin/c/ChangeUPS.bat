@echo off
title Change UPS
set "upsdir=C:\Program Files (x86)\UPS"
if not exist "%upsdir%\ChangeUPS.exe" mklink "%upsdir%\ChangeUPS.exe" "%upsdir%\Change UPS.exe"
start /d "%upsdir%" ChangeUPS.exe

