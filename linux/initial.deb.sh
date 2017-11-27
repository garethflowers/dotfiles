#!/bin/sh

# update
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# general
sudo apt install -y curl libcurl3 wget wput
sudo apt install -y chromium-browser dia filezilla gimp inkscape torbrowser-launcher vlc

curl --output /tmp/slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-2.3.3-amd64.deb
sudo dpkg -i /tmp/slack.deb
rm -f /tmp/slack.deb

# vcs
sudo apt install -y git subversion

# node
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt install -y nodejs

# php
sudo apt install -y composer php

# python
sudo apt install -y python python-pip

# atom
curl -L -o /tmp/atom.deb https://atom.io/download/deb
sudo dpkg -i /tmp/atom.deb
sudo apt install -fy
rm -f /tmp/atom.deb

# vscode
curl -L -o /tmp/vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i /tmp/vscode.deb
rm -f /tmp/vscode.deb

# insomnia
curl -L -o /tmp/insomnia.deb https://builds.insomnia.rest/downloads/ubuntu/latest
sudo dpkg -i /tmp/insomnia.deb
rm -f /tmp/insomnia.deb

# gitkraken
curl -L -o /tmp/gitkraken.deb https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i /tmp/gitkraken.deb
rm -f /tmp/gitkraken.deb

# virtualbox
sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian artful contrib' > /etc/apt/sources.list.d/virtualbox.list"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install dkms virtualbox-5.2

# fonts
sudo apt install -y fonts-droid-fallback fonts-inconsolata

# remote
sudo apt install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# vpn
sudo apt install xl2tpd network-manager-strongswan
curl --output /tmp/strongswan.deb --location https://launchpad.net/~raharper/+archive/ubuntu/bugfixes/+build/10771765/+files/network-manager-strongswan_1.4.0_amd64.deb
sudo dpkg --install /tmp/strongswan.deb
rm -f /tmp/strongswan.deb

# docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker "$USER"
