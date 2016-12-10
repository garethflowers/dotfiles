#!/bin/sh

# general
sudo apt-get install -y dia gimp inkscape

#browsing
sudo apt-get install -y chromium-browser torbrowser-launcher

# development
sudo apt-get install -y subversion pgadmin3

curl --output /tmp/atom.deb --location https://atom.io/download/deb
sudo dpkg --install /tmp/atom.deb
sudo apt-get install -fy
rm -f /tmp/atom.deb

curl --output /tmp/vscode.deb --location https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg --install /tmp/vscode.deb
rm -f /tmp/vscode.deb

# fonts
sudo apt-get install -y fonts-droid-fallback fonts-inconsolata msttcorefonts

# remote
sudo apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker "$USER"
