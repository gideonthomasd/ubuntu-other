#!/bin/sh

sudo apt update && sudo apt upgrade

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf i3 dmenu lxappearance git sakura xterm feh nitrogen thunar materia-gtk-theme deepin-icon-theme network-manager -yy

sudo apt install tint2 xcompmgr geany unzip pulseaudio pavucontrol fonts-font-awesome rofi gsimplecal curl lemonbar sxhkd wget youtube-dl plank lxtask lxpolkit vlc -yy

sudo apt install parcellite lxterminal vim i3blocks breeze-cursor-theme breeze-gtk-theme breeze-icon-theme gparted ark neofetch flatpak i3lock-fancy -yy

sudo apt install libx11-dev  build-essential libxinerama-dev sharutils suckless-tools libxft-dev moc python3-pip fonts-powerline fonts-noto -yy

################ Prepare config directories ########################

mkdir -p $HOME"/.config"
mkdir -p $HOME"/.config/lxterminal"
mkdir -p $HOME"/.config/termite"
mkdir -p $HOME"/.config/rofi"
mkdir -p $HOME"/.config/jgmenu"
mkdir -p $HOME"/.config/openbox"
#mkdir -p $HOME"/.config/obmenu-generator"
mkdir -p $HOME"/.config/tint2"
mkdir -p $HOME"/.config/i3"
mkdir -p $HOME"/.config/i3blocks"
mkdir -p $HOME"/.config/plank"
mkdir -p $HOME"/.config/sakura"

############### Put in directories #################################

cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd openbox
cp -r * ~/.config/openbox
cd ..

cd plank
cp -r * ~/.config/plank
cd ..

cd sakura
cp -r * ~/.config/sakura
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..


################ Install Dwm #######################################

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
