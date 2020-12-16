#!/usr/bin/env bash

sudo pacman -S --noconfirm --overwrite '*' base-devel go git screen x11vnc || exit
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
echo 'export HISTSIZE=3000' > .bashrc2
echo 'export HISTCONTROL=ignoreboth' >> .bashrc2
echo 'export LD_LIBRARY_PATH=$HOME/fr/libfakeroot/:/lib:/usr/lib' >> .bashrc2
echo 'export PATH=$HOME/fr/bin:$PATH' >> .bashrc2
#export PATH=/opt/fakeroot/bin:$PATH' >> .bashrc2
#export LD_LIBRARY_PATH=/opt/fakeroot/libs:/lib:/usr/lib' >> .bashrc2
#./libtool   --mode=install /usr/bin/install -c faked '/opt/fakeroot/bin'

echo "Add improvements to bash? [Y/n]"
read i
if [ "$i" != "n" ]; then
  echo ". . ~/.bashrc2" >> .bashrc
fi
