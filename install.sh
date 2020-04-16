#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


# *** bash ***

rm ~/.bashrc
ln -sv ~/.dotfiles/.bashrc ~
rm ~/.bash_profile
ln -sv ~/.dotfiles/.bash_profile ~
rm ~/.bash_aliases
ln -sv ~/.dotfiles/.bash_aliases ~


# *** vim ***

rm ~/.vimrc
rm -rf ~/.vim
ln -sv ~/.dotfiles/.vim ~

