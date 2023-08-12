#!/bin/bash

sudo apt install deadbeef plank pulseaudio volumeicon-alsa -y

mkdir -p ~/.local/share/plank/themes

cd myplank
cp -r * ~/.local/share/plank/themes
cd ..

cd plank
cd dock1
cp -r * ~/.config/plank/dock1
cd ..
cd ..

cd xfce4
cp -r * ~/.config/xfce4
cd ..

echo "Insert deadbeef, plank, volumeicon into startup session"

echo "Greybird-dark-mx; Papirus-dark; In mouse do Bibata-Modern_Ice"

echo "For yt-dlp use BACKPORTS"
