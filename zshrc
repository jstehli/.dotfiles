#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|


# *** HISTORY ***

HISTFILE=~/.cache/zsh/histfile
HISTSIZE=5000
SAVEHIST=10000


# *** VIM BINDINGS ***

bindkey -v


# *** COMMAND COMPLETION ***

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select  # press Tab twice for an autocompletion menu
setopt COMPLETE_ALIASES  # autocompletion of command line switches for aliases
zstyle ':completion::complete:*' gain-privileges 1  # autocompletion in privileged cmd's, e.g., sudo


# *** PROMPT ***

# set prompt
PS1="[%n@%m %1~]%(#.#.$) "

# enable themes
autoload -Uz promptinit
promptinit


# *** ENABLE COLORS ***

autoload -U colors && colors


#  other stuff / todo.. :)

unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jonas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


