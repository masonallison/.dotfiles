# My Dotfiles
These are my dotfile configuration files for different software in Bash.
This repository contains scripts for setting up Linux development environment
It has files including a linux.sh file which checks that the operating system is Linux and outputs an error message to linuxsetup.log, creates a .TRASH directory in the home directory if it doesn't already exist, changes the file .nanorc to .bup_nanorc and outputs a message saying the name was changed to the file linuxsetup.log. It then replaces the file from etc/nanorc with a new .nanorc file. The linux.sh finally adds the statement 'source~/.dotfiles/etc/bashrc.custom' to the end of the .bashrc file.
This repository also has a cleanup.sh file reverses the changes made by the linux.sh script. Removes the .nanorc file in the home directory. It removes the line 'source ~/.dotfiles/etc/bashrc_custom' form the .bashrc file. Finally it removes the .TRASH directory in the home directory.
The Makefile has two targets: the linux.sh and the cleanup.sh scripts. It runs the linux.sh script first then the cleanup.sh script second.


## .nanorc
This is my custom .nanorc configuration for Nano.
The .nanorc file has configuration options for the nano text editor. It autoindents, bolds the text, sets the tabsize to 4, changes the key color, enables mouse support.
## .bashrc
This is my custom .bashrc configuration for Bash.
The .bashrc file contains configuration options for the bash shell. It sets the prompt and aliases for commonly used commands.
