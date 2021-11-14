# Set Execution Policy and install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; \
[System.Net.ServicePointManager]::SecurityProtocol \
= [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; \
iex ((New-Object System.Net.WebClient).DownloadString\
('https://community.chocolatey.org/install.ps1'))

# turn off hyperV
Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

# install virtual box
choco install virtualbox

# install vagrant
choco install vagrant cyg-get

# install vagrant dependencies
cyg-get openssh 
cyg-get rsync 
cyg-get ncurses

# create vagrant directory
mkdir /ubuntu_dev

# lift vagrant box
cd /ubuntu_dev
vagrant init slape/ubuntu_dev
vagrant up