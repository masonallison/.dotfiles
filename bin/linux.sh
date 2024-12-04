#!/bin/bash
#checks if the operating system type is Linux
#unamestr=$(uname)
cd ~/.dotfiles/bin
if [ $(uname) != "Linux" ]; then
	#prints the message to the linuxsetup.log file
	echo "ERROR" >> linuxsetup.log
	exit

fi
#creates the .TRASH directory if it doesnt already exist
mkdir ~/".TRASH"
#if the .nanorc file is in the home directory it changes its name
if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	#outputs the message to the linuxsetup.log file
	echo "The current .nanorc file was changed to .bup_nanorc" >> linuxsetup.log

fi
#Redirects the contents of the etc/nanorc to .nanorc in the home directory
cp /etc/nanorc ~/.nanorc
#adds the statement to the end of the .bashrc file in the home directory
echo "source /dotfiles/etc/bashrc_custom" >> ~/.bashrc

