@echo off
chcp 866
cls
title Set ...
set defragger=ausdiskdefragportable.exe
set "defname=Auslogics Disk Defrag Portable"
set defurl=http://static.auslogics.com/en/disk-defrag/ausdiskdefragportable.exe
title Запуск... %defname%
set "programs_dir=%~d0%~p0..\..\programs\defrager"
md "%programs_dir%"
cd /d "%programs_dir%"
cls

if not exist="%programs_dir%\%defragger%" goto wgetadd

goto runadd
rem exit
echo ---end---
pause

:wgetadd
title Загрузка... %defname%

echo.
echo %defname% не найден и будет скачан скачан автоматически
echo закройте окно если хотите отменить загрузку.
echo.
echo Ниже сведенья о установке и доступности загрузки.
echo.
echo Будет установлен в
echo "%programs_dir%ausdiskdefragportable.exe"
echo.
"%~d0%~p0..\exe\wget.exe" %defurl% --spider
rem "%dl_dir%..\bin\wget.exe" %defurl% --spider
title Загрузка... %defname%
pause

cls
echo Загрузка... %defname%
echo.
"%~d0%~p0..\exe\wget.exe" %defurl% -t 5 -c -nc
rem "%dl_dir%..\bin\wget.exe" %defurl% -t 5 -c -nc

:runadd
title Запуск... %defname%

start /d "%programs_dir%" %defragger%
rem exit