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
echo "Adding git aliases"
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'

if ( git config --global --get user.name &> /dev/null )
then
  echo "User already exists"
else
  echo "Adding some git configurations"
  echo "Name: "
  read name
  echo "Email: "
  read email

  git config --global user.name $name
  git config --global user.email $email
  git config --global pull.rebase true
fi

echo "
Things to install after installation:

* Vimium in browsers (for navigation with Vim commands)
* Finish starship installation: https://starship.rs/ (https://starship.rs/#zsh) (Also change to use the nerd fonts in settings)


Add the following to ~/.config/fish/config.fish

starship init fish | source
set -xg GPG_TTY (tty)

Lunar Vim Specific:

Open Lunar Vim 

> 'lvim'

Language Server

> 'LspInstall go'
> 'LspInstall typescript'
> 'LspInstall vim'
> 'LspInstall dockerfile'
> 'LspInstall rust'
> 'LspInstall bash'
> 'LspInstall css'
> 'LspInstall efm'
> 'LspInstall lua'
> 'LspInstall graphql'
> 'LspInstall yaml'
> 'LspInstall html'
> 'LspInstall json'

Possible issues:
* We have seen issues where we don't get the correct permissions in /usr/local, run this command to solve this: 'sudo chown -R $(whoami) /usr/local'

In Codium and VSCode holding j & k might not work, run this command in the terminal to make it work:

> defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool falsedefaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
"
