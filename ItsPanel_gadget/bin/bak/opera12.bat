title opera
@echo off
Set xOS=x86& If Defined PROCESSOR_ARCHITEW6432 (Set xOS=x64) Else If "%PROCESSOR_ARCHITECTURE%"=="AMD64" Set xOS=x64
rem Echo OS - %xOS%
set operad=G:\Programs\ProgramsW\Opera\Opera12

If %xOS%=="x86" (
  Start %operad%\32\opera.exe
) Else (
  Start %operad%\64\opera.exe
)
