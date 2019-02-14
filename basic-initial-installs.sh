#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Brian Petroski
# 
##################################################################################################################
#######software from 'normal' repositories
sudo apt-get install -y catfish clementine curl dconf-cli dconf-editor dropbox evolution focuswriter geany geary gimp gpick
sudo apt-get install -y glances gparted grsync hardinfo inkscape meld
sudo apt-get install -y openshot pinta plank ppa-purge screenfetch  shutter nemo-compare 
sudo apt-get install -y  vlc    
sudo apt remove ssh 
sudo apt install -y openssh-server openssh-client sshpass git repo npm nodejs coreutils  aptitude
sudo apt-get install -y build-essential qmlscene qt5-qmake qt5-default qtdeclarative5-dev
sudo apt-get install -y qtdeclarative5-controls-plugin qtdeclarative5-qtquick2-plugin libqt5qml-graphicaleffects
sudo apt-get install -y qtdeclarative5-dialogs-plugin qtdeclarative5-localstorage-plugin qtdeclarative5-window-plugin

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

###############################################################################################


#ending
mkdir $HOME/Upload
sudo apt-get -y update
sudo apt-get -f -y install
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

echo "################################################################"
echo "###################  software installed      ###################"
echo "################################################################"

rm /tmp/google-chrome-stable_current_amd64.deb

echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
rm /tmp/google-chrome-stable*.deb
git config --global user.email "brian.w.petroski@gmail.com"
git config --global user.name "blueyes27"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

### Delete old kernels dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs sudo apt-get -y purge

##Boot repair 
sudo add-apt-repository -y ppa:yannubuntu/boot-repair
sudo apt update

sudo add-apt-repository ppa:clipgrab-team/ppa -y
sudo apt-get update
sudo apt-get install clipgrab -y
sudo apt install boot-repair

sudo add-apt-repository ppa:numix/ppa -y


# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle

wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.1/Stacer_1.0.1_amd64.deb -O /tmp/stacer.deb

sudo dpkg -i /tmp/stacer.deb

rm /tmp/stacer.deb

sudo add-apt-repository ppa:gerardpuig/ppa -y
sudo apt update
sudo apt install -y ubuntu-cleaner

sudo apt-add-repository -y ppa:teejee2008/ppa -y
sudo apt-get update
sudo apt-get install ukuu -y

#######END
