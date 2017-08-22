#!/bin/sh

# update
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# general
sudo apt install -y libcurl3
sudo apt install -y chromium-browser dia filezilla gimp inkscape torbrowser-launcher vlc

curl --output /tmp/slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-2.3.3-amd64.deb
sudo dpkg --install /tmp/slack.deb
rm -f /tmp/slack.deb

# development
sudo apt install -y git subversion
sudo apt install -y pgadmin3
sudo apt install -y php composer

curl --output /tmp/atom.deb --location https://atom.io/download/deb
sudo dpkg --install /tmp/atom.deb
sudo apt install -fy
rm -f /tmp/atom.deb

curl --output /tmp/vscode.deb --location https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg --install /tmp/vscode.deb
rm -f /tmp/vscode.deb

curl --output /tmp/insomnia.deb --location https://builds.insomnia.rest/downloads/ubuntu/latest
sudo dpkg --install /tmp/insomnia.deb
rm -f /tmp/insomnia.deb

curl --output /tmp/gitkraken.deb --location https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg --install /tmp/gitkraken.deb
rm -f /tmp/gitkraken.deb

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt install -y nodejs

# virtualbox
sudo apt install -y virtualbox virtualbox-dkms virtualbox-qt virtualbox-guest-additions-iso

# fonts
sudo apt install -y fonts-droid-fallback fonts-inconsolata ttf-mscorefonts-installer

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
