#!/bin/bash
#This script reverses the changes made by the linux.sh scripts

#removes the .nanorc file from the home directory
rm -f ~/.nanorc

#remove the line source ∼/.dotfiles/etc/bashrc custom in the .bashrc file
sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#removes the TRASH directory in the home directory
rm -rf ~/".TRASH"

