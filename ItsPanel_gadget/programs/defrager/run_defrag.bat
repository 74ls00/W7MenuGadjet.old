@echo off
chcp 866
cls
title Set ...
set defragger=ausdiskdefragportable.exe
set "defname=Auslogics Disk Defrag Portable"
set defurl=http://static.auslogics.com/en/disk-defrag/ausdiskdefragportable.exe
title Запуск... %defname%
set programs_dir=%~d0%~p0
cd /d "%programs_dir%"

if not exist="%~d0%~p0ausdiskdefragportable.exe" goto wgetadd
goto runadd
exit

:wgetadd
title Загрузка... %defname%
echo.
echo %defname% не найден и будет скачан скачан автоматически
echo закройте окно если хотите отменить загрузку.
echo.
echo Ниже сведенья о установке и доступности загрузки.
echo.
echo Будет установлен в
echo "%~d0%~p0ausdiskdefragportable.exe"
echo.
"%programs_dir%..\bin\wget.exe" %defurl% --spider
title Загрузка... %defname%

pause
cls
echo Загрузка... %defname%
echo.
"%programs_dir%..\bin\wget.exe" %defurl% -t 5 -c -nc

:runadd
title Запуск... %defname%
start /d "%programs_dir%" %defragger%
exit