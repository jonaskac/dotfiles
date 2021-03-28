#!/bin/sh

#############################################
# Run this file from within the dotfile folder
#############################################


# Backup the existing .vimrc
cp ~/.vimrc ~/.vimrc_dotfile_backup || true


set -e

echo "
set runtimepath+=$PWD/vim

source $PWD/vim/index.vim

" > ~/.vimrc

echo "Installing dependencies"
./install-dependencies.sh

echo "Installation of VIM configuration has been done! :P"
