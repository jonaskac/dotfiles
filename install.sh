#!/bin/sh

#############################################
# Run this file from within the dotfile folder
#############################################

set -e

echo "Installing dependencies"
./install-dependencies.sh

echo "Install Git submodules"
./submodules.sh

echo "Installation complete! :)"

#############################################
# Adding some neat git aliases
#############################################
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
