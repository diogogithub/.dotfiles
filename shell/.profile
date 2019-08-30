# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
    fi
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export PATH="$HOME/.cargo/bin:$PATH"

# {{START_NEOVIM_STUDIO_TOKEN}}
if [ -z "${NEOVIM_STUDIO_PROFILE_SOURCED}" ] && [ -e "/home/xellos/.neovim-studio/neovim_studio_profile" ]; then
    source "/home/xellos/.neovim-studio/neovim_studio_profile"
fi
# {{END_NEOVIM_STUDIO_TOKEN}}

