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
rm -rf ~/.config/i3blocks

# symlink
ln -sv ~/.dotfiles/i3 ~/.config/i3
ln -sv ~/.dotfiles/i3blocks ~/.config/i3blocks


# *** Xresources (terminal customization) ***

# cleanup
rm -rf ~/.Xresources

# symlink
ln -sv ~/.dotfiles/Xresources ~/.Xresources


# *** xinitrc ***

# cleanup
rm -rf ~/.xinitrc

# symlink
ln -sv ~/.dotfiles/xinitrc ~/.xinitrc


# *** dunst (notifications) ***

rm -rf ~/.config/dunst
ln -sv ~/.dotfiles/dunst ~/.config/dunst


# *** zsh ***

rm -rf ~/.zshrc
ln -sv ~/.dotfiles/zshrc ~/.zshrc
