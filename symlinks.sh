#!/bin/bash

# folder that holds dotfiles
dir=~/dotfiles

# files to symlink to the home folder
files="Xresources bash_profile bashrc xinitrc"

for file in $files; do
	ln -s $dir/$file ~/.$file
done

# creating folders for symlinking in .config
mkdir ~/.config/i3

# files to symlink to the .config folder
files="i3/config i3/i3status.conf i3/windowtitle.sh"

for file in $files; do
	ln -s $dir/$file ~/.config/$file
done