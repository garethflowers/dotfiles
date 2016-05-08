#!/bin/sh

dnf update -y
dnf install -y gimp inkscape htop nano filezilla dkms cabextract levien-inconsolata-fonts
rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
