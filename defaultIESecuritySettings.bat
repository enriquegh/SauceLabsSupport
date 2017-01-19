@echo off
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v CurrentLevel /t REG_DWORD /d 70912 /f
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" "C:\default.reg" /y
reg import "C:\default.reg"
