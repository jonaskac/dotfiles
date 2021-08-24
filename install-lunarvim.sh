#!/bin/sh

# Install LunarVim
echo "Install Neovim and LunarVim"
curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/rolling/utils/installer/install.sh | LVBRANCH=rolling bash -s -- --overwrite

echo "Install our LunarVim config"
[ -f ~/.config/lvim/config.lua ] && rm ~/.config/lvim/config.lua
ln -s $PWD/lv-config.lua ~/.config/lvim/config.lua
