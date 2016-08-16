$gfilename = "ItsPanel"	;название файла гаджета
$dirsrc = "ItsPanel_gadget"	;папка распакованного гаджета
$logfile = '~build_log.txt'	;лог 7z

$gadgetxml = $gfilename & "_gadget\gadget.xml"	;путь к конфигурации гаджета (в папке гаджета)
$name="Its Panel"	;название гаджета
$version=@YEAR & "." & @YDAY & "." & @MIN & @SEC
;$version=@YEAR & "." & @MON & "." & @MDAY & "." & @HOUR & "." & @MIN & "." & @SEC
$page="pages/page0.html"	;стартовая страница гаджета

$dirbak = "backup\"	;бэкап упакованого гаджета перред сборкой
$gfilebak = $gfilename & "_bak" & @YEAR & @YDAY & @MIN & @SEC & ".gadget"	;имя бэкапа гаджета

$hFile = FileOpen($gadgetxml, 2)
; Проверяет, является ли файл открытым, перед тем как использовать функции чтения/записи в файл
If $hFile = -1 Then
    MsgBox(4096, "Ошибка", "Невозможно открыть файл: " & @CRLF & $gadgetxml)
    Exit
EndIf
FileWriteLine($hFile, "<?xml version=""1.0"" encoding=""utf-8"" ?>" & @CRLF)
FileWriteLine($hFile, "<gadget>" & @CRLF & @TAB & "<name>" & $name & "</name>" & @CRLF)
FileWriteLine($hFile, @TAB & "<version>" & $version & "</version>" & @CRLF)
FileWriteLine($hFile, @TAB & "<hosts>" & @CRLF & @TAB & @TAB & "<host name=""sidebar"">" & @CRLF)
FileWriteLine($hFile, @TAB & @TAB & "<base type=""HTML"" apiVersion=""1.0.0"" src=""" & $page & """ />" & @CRLF)
FileWriteLine($hFile, @TAB & @TAB & "<permissions>full</permissions>" & @CRLF)
FileWriteLine($hFile, @TAB & @TAB & "<platform minPlatformVersion=""0.3"" />" & @CRLF)
FileWriteLine($hFile, @TAB & @TAB & "</host>" & @CRLF & @TAB & "</hosts>" & @CRLF & "</gadget>" & @CRLF)
FileClose($hFile)

FileMove ($gfilename & ".gadget" , $dirbak & $gfilebak , 9 )

Run(@ComSpec & " /c" & '7z.exe a -tzip ' & $gfilename & '.gadget .\' & $dirsrc & '\* >' & $logfile , "", @SW_HIDE)





