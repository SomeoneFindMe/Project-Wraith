# 🛡️ NextGen Mods: Project Wraith 

![Bash](https://img.shields.io/badge/Script-Bash-darkgreen.svg)
![Platform](https://img.shields.io/badge/Platform-Android-green.svg)
![Java](https://img.shields.io/badge/Engine-Java_Pairip-orange.svg)
![Tool](https://img.shields.io/badge/Tool-MT_Manager-blue.svg)
![Root](https://img.shields.io/badge/Requirement-Sukishu_Ultra%20%7C%20Virtual_Master-red.svg)

Project Wraith is not just a standard terminal script; it is a highly advanced, visually dynamic, and fully automated terminal interface designed to bypass Pairip protections. Built using **Bash** and executed via **Termux**, it features a beautiful custom UI, live background process tracking, and strict error handling for a seamless modding experience.

---

## ✨ Supercharged Features

* **🧠 Smart Path Execution:** Completely interactive terminal UI. Just paste your file paths when prompted without messing with complicated command-line arguments.
* **📺 Live Server Animation:** Simulates a real-time server environment, calculating background Java processing and displaying live percentage updates (`[RUNNING] 42%`) so you know it never freezes.
* **🛡️ Dynamic Error Trapping:** Automatically reads hidden background logs. If your target app doesn't actually have Pairip protection, the script catches it instantly and safely aborts.
* **🎨 NextGen UI Architecture:** Custom curved-pipe formatting (`╭, ╰, │`), vibrant hex-style terminal colors, and a clean workspace that hides all messy, raw Java output.
* **🌐 Auto-Redirect Links:** Automatically triggers your device's browser to open official project channels the moment a sequence successfully completes.

---

## 🛠️ Tech Stack

* **Language:** Bash Scripting
* **Processing Engine:** Java (`Pairip.jar` v1.3.10)
* **Environment:** Termux (Android)
* **Required Tools:** MT Manager, Local/Virtual Root

---

## 🚀 How to Execute Locally

### 1. Pre-Processing (MT Manager)
Before launching the script, you must manually merge the split APKs.
1. Open **MT Manager** and locate your target `.apks` file.
2. Tap on the file and select **View** (Do not install or open).
3. Inside the archive, locate the `base.apk`. 
4. Move all the split APK files into this `base.apk` directory.
5. Tap **Replace** and confirm to finalize the merged APK structure.

### 2. Extracting the Payload (.json)
To successfully bypass the protection, you need the app's unique Pairip JSON file.
1. Install the target application on your device and **open it at least once** to generate background data.
2. Open MT Manager and navigate to the root directory: `/data/data/<package_name>/`
   > **Note:** This requires Root Permission (e.g., Sukishu Ultra). If your device is not rooted, install **Virtual Master**, run a virtual rooted environment, install the app inside it, and extract the data from there.
3. Locate the Pairip `.json` file inside the app's dictionary folder.
4. Copy the `.json` file and paste it into your local emulator/internal storage.

### 3. Run the Wraith Engine
Ensure your `.apk` and `.json` files are ready, then launch the terminal interface.

```bash
# Grant execution permissions (first time only)
chmod +x patcher.sh

# Boot the interface
./patcher.sh
```
👤 Developer
​𑲭𑲭𑲭𑲭𑲭𑲭𑲭𑲭◄⏤‌‌🦋꯭𝆺𝅥⃝꯭S‌‌‌‌‌‌om‌‌‌‌‌‌‌‌‌‌‌‌‌e‌o‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌n‌‌e⏤‌‌🦋꯭
18-year-old System Modding Ninja & AI Enthusiast.
GitHub: SomeoneFindMe
Telegram: NextGenModsOfficial
YouTube: NextGenMods Channel
⭐ If you like this project, don't forget to star the repository!
