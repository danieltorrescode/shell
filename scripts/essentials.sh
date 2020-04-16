#!/bin/bash
echo "###########################################" 
echo "updating repositories and installing essentials" 
echo "###########################################" 
apt-get update
apt-get install -y aptitude
aptitude install -y build-essential screen curl htop wget ranger xorg 
aptitude install -y xdo xtitle clang git cmake
aptitude install -y vim vim-syntastic vim-snippets vim-youcompleteme
aptitude install -y emacs emacs-goodies-el
aptitude install -y compton feh arandr playerctl pavucontrol
aptitude install -y suckless-tools dmenu surf tabbed
aptitude install -y zathura mpv imagemagick
aptitude install -y python-pip python3-pip virtualenv
aptitude install -y pkg-config libfontconfig-dev libdbus-glib-1-2 libfreetype6-dev
aptitude install -y libx11-dev libxft-dev libxinerama1 libxinerama-dev
aptitude install -y simple-scan fonts-hack-ttf fonts-font-awesome fonts-liberation
