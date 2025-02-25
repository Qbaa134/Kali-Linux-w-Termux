# Kali Linux w Termux - Instalacja (Wersja Graficzna)

Ten poradnik przedstawia, jak zainstalować Kali Linux w Termux na urządzeniu z systemem Android wraz ze środowiskiem graficznym (XFCE).

## Wymagania
- Android 7.0 lub nowszy
- Termux zainstalowany z F-Droida lub GitHub (zalecane)
- Połączenie z internetem

## Instalacja

1. **Zaktualizuj Termux:**
```bash
pkg update && pkg upgrade -y
```

2. **Zainstaluj wymagane pakiety:**
```bash
pkg install proot-distro wget curl -y
```

3. **Pobierz i uruchom skrypt instalacyjny:**
```bash
wget https://raw.githubusercontent.com/qbaa134/Kali-Linux-w-Termux/main/install_gui.sh
chmod +x install_gui.sh
./install_gui.sh
```

4. **Uruchom Kali Linux:**
```bash
proot-distro login kali
```

5. **Zainstaluj środowisko graficzne (XFCE) i serwer VNC:**
```bash
apt update && apt upgrade -y
apt install xfce4 xfce4-goodies tightvncserver -y
```

6. **Skonfiguruj serwer VNC:**
```bash
vncserver
```
Podczas pierwszego uruchomienia ustaw hasło dostępu do sesji VNC.

7. **Połącz się z sesją VNC:**
Zainstaluj aplikację **VNC Viewer** z Google Play i połącz się z adresem `127.0.0.1:5901`.

## Zatrzymanie sesji VNC
Aby zatrzymać sesję VNC, wykonaj polecenie:
```bash
vncserver -kill :1
```

## Odinstalowanie
Aby usunąć Kali Linux, wykonaj poniższe polecenie:
```bash
proot-distro remove kali
```

## Uwagi
- Kali działa w środowisku chroot, nie wpływa na system Android.
- Po wyjściu z sesji system pozostaje nienaruszony.

## Problemy
Jeśli wystąpią problemy, sprawdź logi:
```bash
cat ~/kali-install-gui.log
```

----

# Kali Linux w Termux - Instalacja

Ten poradnik przedstawia, jak zainstalować Kali Linux w Termux na urządzeniu z systemem Android.

## Wymagania
- Android 7.0 lub nowszy
- Termux zainstalowany z F-Droida lub GitHub (zalecane)
- Połączenie z internetem

## Instalacja

1. **Zaktualizuj Termux:**
```bash
pkg update && pkg upgrade -y
```

2. **Zainstaluj wymagane pakiety:**
```bash
pkg install proot-distro wget curl -y
```

3. **Pobierz i uruchom skrypt instalacyjny:**
```bash
wget https://raw.githubusercontent.com/qbaa134/Kali-Linux-w-Termux/main/install.sh
chmod +x install.sh
./install.sh
```

4. **Uruchom Kali Linux:**
```bash
proot-distro login kali
```

## Odinstalowanie
Aby usunąć Kali Linux, wykonaj poniższe polecenie:
```bash
proot-distro remove kali
```

## Uwagi
- Kali działa w środowisku chroot, nie wpływa na system Android.
- Po wyjściu z sesji system pozostaje nienaruszony.

## Problemy
Jeśli wystąpią problemy, sprawdź logi:
```bash
cat ~/kali-install.log
```


