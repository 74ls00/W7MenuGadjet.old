@echo off
title 
cls
set "flog=.dc@To^&6x2y0A.log"
FOR %%d IN (g h i j k l m n o p q r s t u v w x y z c d e f) DO IF EXIST %%d:\%flog% SET flog=%%d:
if exist=%flog% start %flog%
exit
rem set "flog=dc@To^&6x2y0A.log" & mv %flog% .%flog%
