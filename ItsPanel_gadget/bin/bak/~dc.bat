title dc
@echo off
Set xOS=x86& If Defined PROCESSOR_ARCHITEW6432 (Set xOS=x64) Else If "%PROCESSOR_ARCHITECTURE%"=="AMD64" Set xOS=x64
rem Echo OS - %xOS%
set dcrdir=G:\Programs\Programs\cr\dcrypt-0.9-bin

If %xOS%=="x86" (
  Start %dcrdir%\i386\dcrypt.exe
) Else (
  Start %dcrdir%\amd64\dcrypt.exe
)


