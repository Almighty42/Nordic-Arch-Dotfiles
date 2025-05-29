#!/bin/sh

# Cloning files from github
git init &&
git remote add origin https://github.com/Almighty42/Nordic-Arch-Dotfiles $HOME &&
git fetch origin &&
git checkout -t -f origin/main &&
# Removing unnecessary files
rm -rf $HOME/.git/ &&
rm -rf $HOME/README.md 
