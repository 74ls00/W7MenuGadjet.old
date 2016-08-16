@echo off
title Game...

set rrrgamed2=T:\Games\Rappelz\

set rrrscreen3=%rrrgamed2%\screens

md %rrrscreen3%
move %rrrgamed2%\*.jpg %rrrscreen3%

tskill ggerror

rem start /d %rrrgamed2% %rrrgamed2%\Launcher.exe
start /d %rrrgamed2% %rrrgamed2%\launchpoint.exe

