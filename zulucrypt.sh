#!/bin/bash

echo "Seleziona la tua distribuzione:"
echo "1) Ubuntu/Debian"
echo "2) Fedora"
echo "3) Arch Linux"
read distro

case $distro in
  1)
    sudo apt update && sudo apt install zulucrypt -y
    ;;
  2)
    sudo dnf update -y && sudo dnf install zulucrypt -y
    ;;
  3)
    sudo pacman -Syu && sudo pacman -S zulucrypt --noconfirm
    ;;
  *)
    echo "Selezione non valida"
    exit 1
    ;;
esac

echo "Installazione di Zulucrypt completata"
