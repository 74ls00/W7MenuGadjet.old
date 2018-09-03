@echo off
rem start /d G:\Programs\bin clear_.bat

SET BINDIR=G:\Programs\bin
set "prtappsd=G:\Programs\portableapps.com\PortableApps"

REM RECENT
DEL /Q /F "%USERPROFILE%\Recent\"


del /q /f %prtappsd%\FSViewer57\FSViewer.db
REM del %APPDATA%\FastStone\FSIV\FSViewer.db

DEL /F /Q "%APPDATA%\IconCache.db"
rem DEL /F /Q %USERPROFILE%\LOCALS~1\APPLIC~1\ICONCA~1.DB

pause