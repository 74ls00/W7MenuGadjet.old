@echo off
title USB-����� ������ ZTE MF100
set b3gmd="C:\Program Files (x86)\ZTE MF100\USB-����� ������"
rem set b3gmd="C:\Program Files (x86)\ZTE MF100\USB"
start /d %b3gmd% ejectdisk.exe
start /d %b3gmd% UIMain.exe