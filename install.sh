#!/bin/bash

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -p "Do you want to update your git config? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo 
    else
        rm .gitconfig
    fi
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "scripts/" --exclude "osx/" --exclude "Makefile" --exclude "README.md" -av . ~/.
    source "$HOME/.bash_profile"
    git checkout .gitconfig
else
echo "NOOOOOOOOOOOO! Ok relax we got this"
fi
