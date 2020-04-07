#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


# *** bash ***

ln -sv ~/.dotfiles/.bashrc ~
ln -sv ~/.dotfiles/.bash_profile ~


# *** vim ***

# vimrc
ln -sv ~/.dotfiles/.vimrc ~

# plugin manager: vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

