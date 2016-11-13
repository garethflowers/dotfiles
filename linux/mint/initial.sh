#!/bin/sh

# general
apt-get install dia gimp inkscape

#browsing
apt-get chromium-browser torbrowser-launcher

# development
apt-get install -y subversion pgadmin3

# fonts
apt-get install -y fonts-droid-fallback fonts-inconsolata msttcorefonts

# remote
apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# docker
wget -qO- https://get.docker.com/ | sh
