
###################################################
# Updates all dependencies
###################################################

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
