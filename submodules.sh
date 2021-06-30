#############################################
# Install submodules
#############################################

git submodule init
git submodule update

[ ! -d "~/.config" ] && mkdir -p ~/.config
[[ ! -L "~/.config/nvim" && ! -d "~/.config/nvim" ]] && ln -s $PWD/LunarVim ~/.config/nvim
