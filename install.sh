#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


# *** git submodules ***

git submodule update --init

# *** bash ***

# clean up
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.bash_aliases

# symlinks
ln -sv ~/.dotfiles/bashrc ~/.bashrc
ln -sv ~/.dotfiles/bash_profile ~/.bash_profile
ln -sv ~/.dotfiles/bash_aliases ~/.bash_aliases

# re-initialize conda to account for different user home dirs
# this affects bashrc
if [[ -d ~/miniconda3 ]]
then
    echo "re-initializing miniconda"
    source ~/miniconda3/bin/activate
    conda init
fi
if [[ -d ~/anaconda3 ]]
then
    echo "re-initializing anaconda"
    source ~/anaconda3/bin/activate
    conda init
fi


# *** readline init / inputrc ***

rm -f ~/.inputrc
ln -sv ~/.dotfiles/inputrc ~/.inputrc


# *** vim ***

# cleanup
rm -f ~/.vimrc
rm -rf ~/.vim

# symlink
ln -sv ~/.dotfiles/vim ~/.vim


# *** i3 window manager ***

# cleanup
rm -rf ~/.config/i3

# symlink
ln -sv ~/.dotfiles/i3 ~/.config/i3


# *** autostart script ***

# cleanup
rm -rf ~/.autostart.sh

# symlink
ln -sv ~/.dotfiles/autostart.sh ~/.autostart.sh

# executability
chmod +x ~/.dotfiles/autostart.sh
