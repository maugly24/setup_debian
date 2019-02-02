#!/bin/bash

sudo visudo

sudo apt update
sudo apt upgrade
sudo apt install git

cd
mkdir repos
cd ~/repos
git clone https://github.com/maugly24/setup_debian
cd ~/repos/setup_debian
~/repos/setup_debian/setup.sh
