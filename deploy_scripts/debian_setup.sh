#!/bin/bash

# install virtual box   
apt install virtualbox virtualbox-ext-pack virtualbox-qt

# install vagrant
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
apt install ./vagrant_2.2.9_x86_64.deb
vagrant --version

# create vagrant directory
mkdir /ubuntu_dev

# lift vagrant box
cd /ubuntu_dev
vagrant init slape/ubuntu_dev
vagrant up