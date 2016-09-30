#!/bin/sh

sudo dnf update -y
sudo dnf install -y gimp inkscape htop nano filezilla dkms cabextract levien-inconsolata-fonts
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
