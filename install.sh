#!/bin/bash

echo "[+] Updating package lists..."
sudo apt update

echo "[+] Installing assetfinder via apt..."
sudo apt install assetfinder -y

if command -v assetfinder &> /dev/null; then
    echo "----------------------------------------"
    echo "SUCCESS: assetfinder is now installed!"
    echo "Location: $(which assetfinder)"
    echo "Version: $(assetfinder --version 2>/dev/null || echo 'Latest')"
    echo "----------------------------------------"
else
    echo "----------------------------------------"
    echo "[!] Error: Installation failed."
    echo "Make sure you are on Kali Linux and have an internet connection."
    echo "----------------------------------------"
fi
