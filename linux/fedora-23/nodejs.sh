#!/bin/sh

curl --silent --location https://rpm.nodesource.com/setup_5.x | bash -
dnf install -y nodejs
npm i -g npm
