#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Set vim as the default editor
export EDITOR=vim

# Add Ruby to the PATH
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Find the packages for unkown commands
source /usr/share/doc/pkgfile/command-not-found.bash

# Powerline stuff
# https://powerline.readthedocs.org/en/latest/usage/shell-prompts.html
#powerline-daemon -q
#. ~/.vim/bundle/powerline/powerline/bindings/bash/powerline.sh

# Set the terminal to use 256 colors
export TERM=xterm-256color
