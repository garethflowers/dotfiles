#!/bin/sh

# general
sudo apt-get install -y chromium-browser dia gimp inkscape torbrowser-launcher vlc

curl --output /tmp/slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-2.3.3-amd64.deb
sudo dpkg --install /tmp/slack.deb
rm -f /tmp/slack.deb

# development
sudo apt-get install -y subversion pgadmin3

curl --output /tmp/atom.deb --location https://atom.io/download/deb
sudo dpkg --install /tmp/atom.deb
sudo apt-get install -fy
rm -f /tmp/atom.deb

curl --output /tmp/vscode.deb --location https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg --install /tmp/vscode.deb
rm -f /tmp/vscode.deb

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# fonts
sudo apt-get install -y fonts-droid-fallback fonts-inconsolata msttcorefonts

# remote
sudo apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker "$USER"
