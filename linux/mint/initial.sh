#!/bin/sh

# general
sudo apt-get install -y dia gimp inkscape

#browsing
sudo apt-get install -y chromium-browser torbrowser-launcher

# development
sudo apt-get install -y subversion pgadmin3

# fonts
sudo apt-get install -y fonts-droid-fallback fonts-inconsolata msttcorefonts

# remote
sudo apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker "$USER"
