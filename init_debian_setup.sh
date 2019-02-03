#!/bin/bash

sudo sed -i 's/^%sudo\tALL=(ALL:ALL) ALL$/%sudo\tALL=(ALL) NOPASSWD:ALL/g' /etc/sudoers

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install git virtualenv

git config --global user.email "maugli@apache.org"
git config --global user.name "Attila Szabo"
git config --global user.signingkey 1F68EA1B
git config --global commit.gpgsign true

virtualenv -p python3 ansiblepip
source ansiblepip/bin/activate

pip install ansible

repo_name="setup_debian"

cd
mkdir -p repos
cd ~/repos
if [ ! -d "$repo_name" ]
then
  git clone https://github.com/maugly24/setup_debian
else
  cd "$repo_name"
  git pull --rebase
fi
cd ~/repos/setup_debian
