#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


# *** bash ***

rm ~/.bashrc
ln -sv ~/.dotfiles/.bashrc ~
rm ~/.bash_profile
ln -sv ~/.dotfiles/.bash_profile ~


# *** vim ***

# vimrc
rm ~/.vimrc
ln -sv ~/.dotfiles/.vimrc ~

# plugin manager: vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

