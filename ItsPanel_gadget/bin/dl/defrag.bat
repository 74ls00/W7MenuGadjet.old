@echo off
chcp 866
cls
title Set ...
set defragger=ausdiskdefragportable.exe
set "defname=Auslogics Disk Defrag Portable"
set defurl=http://static.auslogics.com/en/disk-defrag/ausdiskdefragportable.exe
title �����... %defname%
set "programs_dir=%~d0%~p0..\..\programs\defrager"
md "%programs_dir%"
cd /d "%programs_dir%"
cls
if not exist="%programs_dir%\%defragger%" goto wgetadd
goto runadd
exit

:wgetadd
title ����㧪�... %defname%
echo.
echo %defname% �� ������ � �㤥� ᪠砭 ᪠砭 ��⮬���᪨
echo ���ன� ���� �᫨ ��� �⬥���� ����㧪�.
echo.
echo ���� ᢥ����� � ��⠭���� � ����㯭��� ����㧪�.
echo.
echo �㤥� ��⠭����� �
echo "%programs_dir%ausdiskdefragportable.exe"
echo.
"%~d0%~p0..\exe\wget.exe" %defurl% --spider
title ����㧪�... %defname%
pause
cls
echo ����㧪�... %defname%
echo.
echo �� ����뢠�� ���� �� �����襭�� ����㧪�
echo.
"%~d0%~p0..\exe\wget.exe" %defurl% -t 5 -c -nc

:runadd
title �����... %defname%
start /d "%programs_dir%" %defragger%
