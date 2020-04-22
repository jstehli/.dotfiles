#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


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

