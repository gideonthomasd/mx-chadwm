#!/bin/bash

sudo apt install bspwm polybar -y

cd bspwm
chmod +x bspwmrc
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

mkdir -p ~/.config/bspwm
mkdir -p ~/.config/polybar-bspwm

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

