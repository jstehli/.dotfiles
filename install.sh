#!/bin/bash
# Installation script for personal dotfiles


# *** vim ***

# vimrc
ln -sv ~/.dotfiles/.vimrc ~

# plugin manager: vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

