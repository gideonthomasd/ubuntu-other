#!/bin/sh

sudo apt update && sudo apt upgrade

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf i3 dmenu lxappearance git sakura xterm feh nitrogen thunar materia-gtk-theme deepin-icon-theme network-manager -yy

sudo apt install tint2 xcompmgr geany unzip pulseaudio pavucontrol fonts-font-awesome rofi gsimplecal curl sxhkd wget plank lxtask lxpolkit vlc -yy

sudo apt install parcellite lxterminal vim i3blocks breeze-cursor-theme breeze-gtk-theme breeze-icon-theme gparted ark neofetch flatpak i3lock-fancy -yy

sudo apt install libx11-dev  build-essential libxinerama-dev sharutils suckless-tools libxft-dev moc python3-pip fonts-powerline fonts-noto lightdm -yy

################ Prepare succade & lemonbar-xft#####################
sudo apt install build-essential libx11-dev libxft-dev libx11-xcb-dev libxcb-randr0-dev libxcb-xinerama0-dev bspwm -yy
sudo apt install stalonetray volumeicon-alsa -yy

mkdir -p $HOME"/lemonbar-xft"
cd lemonbar-xft
cp -r * ~/lemonbar-xft
cd ..

mkdir -p $HOME"/trysuccade"
cd trysuccade
cp -r * ~/trysuccade
cd ..

################ Prepare config directories ########################

mkdir -p $HOME"/.fonts"

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
mkdir -p $HOME"/.config/succade"
mkdir -p $HOME"/.config/bspwm"
mkdir -p $HOME"/.local/bin"

############### Prepare directories ################################

cd bspwm
chmod +x *.sh
chmod +x bspwmrc
cd ..

cd succade
chmod +x *.sh
cd ..

cd i3
chmod +x *.sh
chmod +x testwallpaper
cd ..

cd i3blocks
chmod +x *.sh
cd ..

cp powermenu.sh ~/powermenu.sh
cp bashrc ~/.bashrc
cp stalonetrayrc ~/.stalonetrayrc

############### Put in directories #################################

cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf

cd fonts
cp -r * ~/.fonts
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cd succade
cp -r * ~/.config/succade
cd ..

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

sudo dpkg -i jgmenu_4.3.0-1+b1_amd64.deb


pip install --user bumblebee-status
cd ~/.config/i3/bumblebee-status/myfiles
cp -r * ~/.local/lib/python3.8/site-packages/bumblebee_status/modules/contrib


cd ~/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/slstatus
sudo make clean install

cd ~/st-transparency-scrollback
sudo make clean install

cd ~/lemonbar-xft
make
sudo make install

cd ~/trysuccade
chmod +x build-inih
chmod +x build
./build-inih
cp bin/succade ~/.local/bin/succade


sudo snap install snap-store
sudo snap install firefox
sudo snap install brave
sudo snap install youtube-dl

sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt install appimagelauncher

sudo usermod -aG lpadmin phil



