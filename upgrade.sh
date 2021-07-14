#!/bin/sh

###################################################
# Updates all dependencies
###################################################

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Updating linux-gnu dependencies"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Updating OSX dependencies"

  brew update
  brew outdated # Shows a list of outdated dependencies
  brew upgrade

  # Update LunarVim
  cd ~/.config/nvim && git pull && cd - 
  nvim --headless \
          +'autocmd User PackerComplete sleep 100m | qall' \
          +PackerUpdate

  nvim --headless \
          +'autocmd User PackerComplete sleep 100m | qall' \
          +PackerSync

elif [[ "$OSTYPE" == "cygwin" ]]; then
  echo "Updating cygwin dependencies"
elif [[ "$OSTYPE" == "msys" ]]; then
  echo "Updating msys dependencies"
elif [[ "$OSTYPE" == "win32" ]]; then
  echo "Updating win32 dependencies"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo "Updating freebsd dependencies"
else
  echo "Unable to update this OS"
fi
