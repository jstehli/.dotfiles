#!/bin/bash
# Installation script for personal dotfiles
# Author: Jonas Stehli


# *** git submodules ***

git submodule update --init


# *** SHELL ***

# ZSH

rm -rf ~/.zshrc
ln -sv ~/.dotfiles/zshrc ~/.zshrc

# BASH

# clean up
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.aliases

# symlinks
ln -sv ~/.dotfiles/bashrc ~/.bashrc
ln -sv ~/.dotfiles/bash_profile ~/.bash_profile
ln -sv ~/.dotfiles/aliases ~/.aliases

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


rm -rf ~/.tmux.conf
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf


# *** user dirs ***

# cleanup
rm -rf ~/.config/user-dirs.dirs
ln -sv ~/.dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs


# *** mutt ***

rm -rf ~/.config/mutt
rm -rf ~/.mutt
rm -rf ~/.muttrc
ln -sv ~/.dotfiles/mutt ~/.config/mutt


# *** udiskie ***

rm -rf ~/.config/udiskie
ln -sv ~/.dotfiles/udiskie ~/.config/udiskie
