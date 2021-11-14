#!/bin/bash

# install x-code developer tools
xcode-select –install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
brew update

# update xcode
xcodebuild -license

# install virtual box   
brew cask info virtualbox virtualbox-extension-pack
brew cask install -force virtualbox virtualbox-extension-pack

# install vagrant
brew cask install vagrant vagrant-manager
vagrant --version

# create vagrant directory
mkdir /ubuntu_dev

# lift vagrant box
cd /ubuntu_dev
vagrant init slape/ubuntu_dev
vagrant up