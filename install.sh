#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Checking for Python..."
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "[!] Python is not installed. Installing Python automatically..."
    pkg update -y && pkg install python -y
else
    echo "[✓] Python is already installed."
fi

echo "[+] Installing Safe_Remove..."

INSTALL_DIR="/data/data/com.termux/files/usr/bin"
SCRIPT_NAME="Safe_Remove"

if [ ! -f "Safe_Remove.py" ]; then
    echo "[!] Error: Safe_Remove file not found in repository!"
    exit 1
fi

cp Safe_Remove.py "$INSTALL_DIR/$SCRIPT_NAME"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "[+] Requesting storage permissions..."
termux-setup-storage

echo "[+] Safe_Remove installed successfully!"
echo "[+] You can now type 'Safe_Remove' from anywhere to run the tool!"
