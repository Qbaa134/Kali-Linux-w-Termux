#!/bin/bash
# Skrypt instalacyjny Kali Linux z GUI w Termux

# Sprawdź, czy Termux jest zaktualizowany
echo "[INFO] Aktualizacja pakietów Termux..."
pkg update && pkg upgrade -y

# Instalacja proot-distro
echo "[INFO] Instalacja proot-distro..."
pkg install proot-distro wget curl -y

# Instalacja Kali Linux
echo "[INFO] Instalacja Kali Linux..."
proot-distro install kali

# Konfiguracja środowiska graficznego XFCE
echo "[INFO] Konfiguracja środowiska graficznego XFCE..."
proot-distro login kali -- apt update && apt upgrade -y
proot-distro login kali -- apt install xfce4 xfce4-goodies tightvncserver -y

# Tworzenie domyślnej sesji VNC
echo "[INFO] Konfiguracja serwera VNC..."
proot-distro login kali -- vncserver

# Instrukcja zakończenia
echo "[INFO] Instalacja zakończona!"
echo "Uruchom Kali: proot-distro login kali"
echo "Aby połączyć się przez VNC, użyj adresu: 127.0.0.1:5901"
echo "Hasło do sesji VNC ustaw podczas pierwszego uruchomienia."
