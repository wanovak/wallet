#!/bin/bash

##########
# Common Tools
##########

# vim
#
sudo apt install vim


##########
# Install Configurations
##########

# be sure to install VPN configuration

# nas shares
# -- mount command: `sudo mount -a`
#
sudo mkdir /media/Will
sudo apt install cifs-utils
echo "//192.168.1.225/Will /media/Will cifs username=wanovak,iocharset=utf8,file_mode=0777,dir_mode=0777" | sudo tee -a /etc/fstab
echo "//192.168.1.225/Media /media/Media cifs username=wanovak,iocharset=utf8,file_mode=0777,dir_mode=0777" | sudo tee -a /etc/fstab


##########
# GUIs
##########

# spotify
# -- https://www.spotify.com/us/download/linux/
#
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update $$ sudo apt-get install spotify-client

# slack
# -- download .deb package: https://slack.com/intl/en-in/downloads/linux
# -- sudo apt install ./slack-desktop-*-amd64.deb
#

# discord
# -- same as slack
#

# vlc
#
sudo apt install vlc
