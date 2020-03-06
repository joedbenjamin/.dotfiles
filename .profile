#datj ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
export PATH=$PATH:~/.scripts
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/bin/browserbookmarks
export PATH=$PATH:~/.local/bin/aaa/bbb/ccc/adfasd/aasfs
# Default programs:
export EDITOR="/home/joe/.config/nvim/nvim.appimage"
export TERMINAL="st"
export DEFAULTBROWSER="brave-browser"
export DEFAULTBROWSERWORKSPACE="9"
export SECONDARYBROWSER="google-chrome-stable"
export SECONDARYBROWSERWORKSPACE="8"
export BASESCRIPTSDIRECTORY="/home/joe/.local/bin"

export FILE="ranger"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
