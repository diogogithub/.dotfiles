#!/bin/bash

# It looks like this is a login shell, load .profile
[ -f "$HOME/.profile" ] && source "$HOME/.profile"

# It looks like this is a bash interactive login shell, load .bashrc
#[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

#if [[ $- == *i* ]]; then . ~/.bashrc; fi
