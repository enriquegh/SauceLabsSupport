@echo off
REM Script changes the "Check for newer versions of stored pages" from Automatically to "Every time I visit the webpage"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v SyncMode5 /t REG_DWORD /d 3 /f
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" "C:\default.reg" /y
reg import "C:\default.reg"
