#!/usr/bin/env bash

#sudo  pacman -S --noconfirm --overwrite '*' base-devel go git x11vnc
# download + build PKGBUILD for temp fakeroor-tcp

export PATH=/opt/fakeroot/bin:$PATH

git clone https://aur.archlinux.org/fakeroot-tcp.git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

# Set user default shell to bash
# chsh -s /bin/bash a

#vncserver :0
