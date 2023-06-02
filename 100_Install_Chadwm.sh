#!/bin/bash

sudo cp chadwm.desktop /usr/share/xsessions/chadwm.desktop
sudo cp chad-exec.sh /usr/bin/chad-exec

cd arco-chadwm
cd scripts
chmod +x *.sh
cd ..
cd launcher
chmod +x *.sh
cd ..
cd ..

mkdir -p ~/.config/arco-chadwm
cd arco-chadwm
cp -r * ~/.config/arco-chadwm
cd ..

mkdir -p ~/.config/jgmenu
cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

mkdir -p ~/.local/share/fonts
cd fonts
cp -r * ~/.local/share/fonts
cd ..

mkdir -p ~/.config/xfce4/terminal
mkdir -p ~/.config/lxterminal

cp terminalrc ~/.config/xfce4/terminal
cp lxterminal.conf ~/.config/lxterminal

cp log.sh ~/log.sh
cp bashrc ~/.bashrc

sudo dpkg -i jgmenu_4.4.1-1_amd64.deb

####Installation#########
###DEBIAN################
sudo apt install i3lock-fancy lxpolkit rofi dmenu curl pcmanfm xfce4-terminal lxterminal volumeicon-alsa libx11-dev libxft-dev libimlib2 libimlib2-dev libxinerama-dev build-essential moc parcellite lolcat picom sxhkd lxappearance
sudo apt install xdotool feh geany ffmpeg lxtask
sudo apt install yt-dlp


######Chadwm#############
cd ~/.config/arco-chadwm/chadwm
sudo make clean install
