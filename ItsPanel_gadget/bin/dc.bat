title dc
@echo off
rem Set xOS=x86& If Defined PROCESSOR_ARCHITEW6432 (Set xOS=x64) Else If "%PROCESSOR_ARCHITECTURE%"=="AMD64" Set xOS=x64
rem Echo OS - %xOS%
rem set dcrdir=G:\Programs\Programs\cr\dcrypt-0.9-bin

rem If %xOS%=="x86" (
rem   Start %dcrdir%\i386\dcrypt.exe
rem ) Else (
rem   Start %dcrdir%\amd64\dcrypt.exe
rem )

start G:\Programs\Programs\cr\dcrypt1-0-757115\dcrypt.exe
