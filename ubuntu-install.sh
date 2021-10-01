#!/bin/sh

sudo apt update && sudo apt upgrade

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf i3 dmenu lxappearance git sakura xterm feh nitrogen thunar materia-gtk-theme deepin-icon-theme network-manager -yy

sudo apt install tint2 xcompmgr geany unzip pulseaudio pavucontrol fonts-font-awesome rofi gsimplecal curl lemonbar sxhkd wget youtube-dl plank lxtask lxpolkit vlc -yy

sudo apt install parcellite lxterminal vim i3blocks breeze-cursor-theme breeze-gtk-theme breeze-icon-theme gparted ark neofetch flatpak i3lock-fancy -yy

sudo apt install libx11-dev  build-essential libxinerama-dev sharutils suckless-tools libxft-dev moc python3-pip fonts-powerline -yy

################Install dwm################################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/dwm-flexipatch
mkdir -p ~/slstatus

mkdir -p ~/st-transparency-scrollback

cd slstatus
chmod +x ram
cd ..

cd dwm-flexipatch
cp -r * ~/dwm-flexipatch
cd ..

cd slstatus
cp -r * ~/slstatus
cd ..

cd st-transparency-scrollback
cp -r * ~/st-transparency-scrollback
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
sudo cp autostart.sh ~/.local/share/dwm

#######Final############################################

cd ~/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/slstatus
sudo make clean install

cd ~/st-transparency-scrollback
sudo make clean install
