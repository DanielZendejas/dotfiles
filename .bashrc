# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions

alias ll='ls -hal --color=auto'
export EDITOR=vim

# Remove audible bell, set visual bell
gsettings set org.gnome.desktop.wm.preferences audible-bell false
gsettings set org.gnome.desktop.wm.preferences visual-bell true
gsettings set org.gnome.desktop.wm.preferences visual-bell-type frame-flash

# Install Vundle for Vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Vim commands for the shell
set -o vi

# Config files aliases
alias brc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias svrc='source ~/.vimrc'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
