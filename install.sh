#!/bin/sh

#############################################
# Run this file from within the dotfile folder
#############################################

set -e

# Backup the existing .vimrc
cp ~/.vimrc ~/.vimrc_dotfile_backup

echo "
set runtimepath+=$PWD/vim

source ${PWD}/vim/basic.vim
source $PWD/vim/files.vim
source $PWD/vim/helpers.vim
source $PWD/vim/ignore.vim
source $PWD/vim/mapping.vim
source $PWD/vim/moving.vim
source $PWD/vim/spelling.vim
source $PWD/vim/ui.vim

" > ~/.vimrc


echo "Installation of VIM configuration has been done! :P"
