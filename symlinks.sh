#!/bin/bash

# folder that holds dotfiles
dir=~/dotfiles

# files to symlink to the home folder
files="Xresources bash_profile bashrc xinitrc"

for file in $files; do
	ln -sf $dir/$file ~/.$file
done

# creating folders for symlinking in .config
mkdir ~/.config/i3
mkdir ~/.config/bspwm
mkdir ~/.config/bar

# files to symlink to the .config folder
files="i3/config i3/i3status.conf i3/windowtitle.sh bspwm/bspwmrc bar/bar.sh"

for file in $files; do
	ln -sf $dir/$file ~/.config/$file
done
