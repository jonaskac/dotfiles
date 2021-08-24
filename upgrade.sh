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
  brew upgrade --cask

  # Update LunarVim
  ./install-lunarvim.sh

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
