#!/bin/bash

echo "Seleziona la tua distribuzione:"
echo "1) Ubuntu/Debian"
echo "2) Fedora"
echo "3) Arch Linux"
read distro

case $distro in
  1)
    sudo apt update && sudo apt install tor nmap -y
    ;;
  2)
    sudo dnf update -y && sudo dnf install tor nmap -y
    ;;
  3)
    sudo pacman -Syu && sudo pacman -S tor nmap
    ;;
  *)
    echo "Selezione non valida"
    exit 1
    ;;
esac

# Installazione di AnonSurf
git clone https://github.com/Und3rf10w/kali-anonsurf.git
cd kali-anonsurf
sudo ./installer.sh

echo "Installazione completata"
