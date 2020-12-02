#!/usr/bin/env bash

sudo pacman -S --noconfirm --overwrite '*' base-devel go git #x11vnc
# download + build PKGBUILD for temp fakeroot-tcp

sudo chsh -s /bin/bash $(whoami)

# Clone full installer.
git clone https://github.com/Sepero/linux-deploy-arch

# export PATH=/opt/fakeroot/bin:$PATH

# git clone https://aur.archlinux.org/fakeroot-tcp.git

git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si --noconfirm

# Set user default shell to bash
# chsh -s /bin/bash a

#vncserver :0

# Bash recommended
echo 'export HISTSIZE=3000' >> .bashrc
echo 'export HISTCONTROL=ignoreboth' >> .bashrc
echo 'export LD_LIBRARY_PATH=$HOME/fr/libs:/lib:/usr/lib' >> .bashrc
echo 'export PATH=$HOME/fr/fakeroot/bin:$PATH' >> .bashrc
#export PATH=/opt/fakeroot/bin:$PATH' >> .bashrc
#export LD_LIBRARY_PATH=/opt/fakeroot/libs:/lib:/usr/lib' >> .bashrc
