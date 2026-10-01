# remove-edge-permanently
# 🚀 ByeByeEdge: Permanent Microsoft Edge Remover

A lightweight, no-nonsense Windows batch script designed to completely purge Microsoft Edge from your system, strip away its leftovers, and block Windows Update from quietly reinstalling it behind your back.

I made this script because Windows makes it incredibly frustrating to uninstall Edge through traditional settings. This script takes back ownership of your system files and cuts Edge out for good.

---

## ⚡ Features
* **Force-Kills Processes:** Instantly terminates all hidden, background `msedge.exe` and update loops.
* **AppX Package Purge:** Uses PowerShell commands to wipe the system-level provisioned app packages.
* **Folder Nuking:** Bypasses "Access Denied" issues by taking folder ownership and shredding the installation directories.
* **Update Immunity:** Creates dummy file walls and adds a targeted Registry block so Windows Update cannot reinstall Edge in the future.

---

## 🛑 CRITICAL: Read Before Running
1. **INSTALL ANOTHER BROWSER FIRST:** Make sure you already have Chrome, Firefox, Brave, or another browser installed. Once you run this script, you will not have an official browser to download a new one!
2. **ADMINISTRATOR RIGHTS REQUIRED:** This script modifies system-level registry keys and deletes protected folders. It will **not** work if run normally.

---

## 🛠️ How to Use

### Method 1: Download the File Directly (Easiest)
1. Download the `GoodbyeEdge.bat` file from this repository.
2. Go to your downloads folder, **right-click** on `GoodbyeEdge.bat`, and select **Run as administrator**.
3. A black command window will flash. Wait until it says `SUCCESS!` and press any key to close it.
4. Restart your computer.

### Method 2: Create It Yourself
1. Right-click on your desktop, select **New > Text Document**, and open it.
2. Copy the script code from the `GoodbyeEdge.bat` file in this repository and paste it into the document.
3. Click **File > Save As...**
4. Change *Save as type* to **All Files (*.*)**.
5. Name it `GoodbyeEdge.bat` and click **Save**.
6. **Right-click** your new file and select **Run as administrator**.

---

## 💬 Disclaimer & Future Updates
Windows Feature Updates are aggressive. If a massive Windows update eventually manages to bypass the registry lock and puts Edge back on your desktop, **don't panic**. Just download or run this script again as an administrator to instantly wipe it back out. 

*Use at your own risk. This script is intended for users who want complete control over their operating system applications.*

