#!/bin/bash

sudo sed -i 's/^%sudo\tALL=(ALL:ALL) ALL$/%sudo\tALL=(ALL) NOPASSWD:ALL/g' /etc/sudoers

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install git

cd
mkdir repos
cd ~/repos
git clone https://github.com/maugly24/setup_debian
cd ~/repos/setup_debian
~/repos/setup_debian/setup.sh
