# Prerequisites: wget, sudo

echo "Downloading ProtOS stuff..."
wget https://raw.githubusercontent.com/videotoaster/ProtOS/main/neofetch
wget https://raw.githubusercontent.com/videotoaster/ProtOS/main/os-release

echo "Making patched neofetch executable..."
chmod +x neofetch

echo "Installing..."
sudo cp neofetch /usr/bin/neofetch
sudo cp os-release /etc/os-release

neofetch
