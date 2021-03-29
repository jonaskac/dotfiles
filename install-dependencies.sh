###################################################
# Installs all the relevant dependencies
###################################################

# Update vim-plug
curl -s https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ./vim/autoload/plug.vim


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing linux-gnu dependencies"
        # TODO
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing MACOS dependencies"
        # Install the latest version of neovim
        brew install --HEAD luajit
        brew install --HEAD neovim

        brew install fzf # For fuzzy searching
        brew install ripgrep # For file searching
        brew install jesseduffield/lazygit/lazygit # For git
        brew install bat # For syntax highlighting
        # TODO : Add installation of oh-my-zsh
elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo "Installing cygwing dependencies"
        # TODO: POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
    echo "Installing msys dependencies"
        # TODO: Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
    echo "Installing win32 dependencies"
        # TODO: I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo "Installing freebsd dependencies"
        # TODO: ...
else
        echo "Unidentified OS, can't install dependencies"
fi
