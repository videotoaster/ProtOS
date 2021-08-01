#!/bin/bash
# Prerequisites: wget, sudo

echo "Downloading ProtOS stuff..."
wget https://raw.githubusercontent.com/videotoaster/ProtOS/main/neofetch
wget https://raw.githubusercontent.com/videotoaster/ProtOS/main/os-release

echo "Making patched neofetch executable..."
chmod +x neofetch

echo "Checking for neofetch..."
if [ -f "/usr/bin/neofetch" ]; then
  echo " ===> Backing it up..."
  sudo cp /usr/bin/neofetch /usr/bin/neofetch-old
fi

echo "Installing..."
sudo cp neofetch /usr/bin/neofetch
sudo cp os-release /etc/os-release

neofetch
