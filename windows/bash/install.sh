#!/bin/sh

# update
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y

# development
sudo apt-get install -y git subversion

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
