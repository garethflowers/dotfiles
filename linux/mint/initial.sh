#!/bin/sh

# general
sudo apt-get install -y chromium-browser dia filezilla gimp inkscape torbrowser-launcher vlc

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

curl --output /tmp/insomnia.deb --location https://builds.insomnia.rest/downloads/ubuntu/latest
sudo dpkg --install /tmp/insomnia.deb
rm -f /tmp/insomnia.deb

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# fonts
sudo apt-get install -y fonts-droid-fallback fonts-inconsolata msttcorefonts

# remote
sudo apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# vpn
sudo apt-get install xl2tpd network-manager-strongswan
curl --output /tmp/strongswan.deb --location https://launchpad.net/~raharper/+archive/ubuntu/bugfixes/+build/10771765/+files/network-manager-strongswan_1.4.0_amd64.deb
sudo dpkg --install /tmp/strongswan.deb
rm -f /tmp/strongswan.deb

# docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker "$USER"
