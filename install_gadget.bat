rem название гаджета
set gadget=ItsPanel.gadget

rem запуск скрипта упаковки гаджета
cd /d %~d0%~p0
start /wait /d "%~d0%~p0" build_itspanel.exe

md "%LOCALAPPDATA%\Microsoft\Windows Sidebar\Gadgets\%gadget%"

"%~d0%~p07z.exe" x -y -o"%LOCALAPPDATA%\Microsoft\Windows Sidebar\Gadgets\%gadget%" "%~d0%~p0%gadget%"

rem костыль создания невозможных папок
%LOCALAPPDATA%\Microsoft\Windows Sidebar\Gadgets\%gadget%\bin\_fix.bat

rem перезапуск гаджетов
taskkill /IM sidebar.exe /F
start sidebar.exe