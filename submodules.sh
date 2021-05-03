#############################################
# Install submodules
#############################################

git submodule init
git submodule update

ln -s $PWD/LunarVim ~/.config/nvim
