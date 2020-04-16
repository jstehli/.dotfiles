#!/bin/bash
# Installation script for personal dotfiles
# by Jonas Stehli


# *** bash ***

# clean up
if [[ -f ~/.bashrc ]]
then
    rm ~/.bashrc
fi
if [[ -f ~/.bash_profile ]]
then
    rm ~/.bash_profile
fi
if [[ -f ~/.bash_aliases ]]
then
    rm ~/.bash_aliases
fi

# symlinks
ln -sv ~/.dotfiles/.bashrc ~
ln -sv ~/.dotfiles/.bash_profile ~
ln -sv ~/.dotfiles/.bash_aliases ~

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

if [[ -f ~/.inputrc ]]
then
    rm ~/.inputrc
fi
ln -sv ~/.inputrc ~

# *** vim ***

# cleanup
if [[ -f ~/.vimrc ]]
then
    rm ~/.vimrc
fi
if [[ -d ~/.vim ]]
then
    rm -rf ~/.vim
fi

# symlink
ln -sv ~/.dotfiles/.vim ~

