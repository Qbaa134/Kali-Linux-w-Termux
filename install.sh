#!/bin/bash
# Kali Linux installation script for Termux

echo "[INFO] Updating packages..."
pkg update && pkg upgrade -y

echo "[INFO] Installing proot-distro..."
pkg install proot-distro -y

echo "[INFO] Installing Kali Linux..."
proot-distro install kali

echo "[INFO] Installation complete. To start Kali, use: proot-distro login kali"
