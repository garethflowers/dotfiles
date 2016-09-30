#!/bin/sh

sudo cat << EOF > /etc/yum.repos.d/oracle-virtualbox.repo
[virtualbox]
name=Fedora \$releasever - \$basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/\$releasever/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF

sudo dnf install -y virtualbox dkms
