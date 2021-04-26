###################################################
# Installs all the relevant dependencies
###################################################

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing linux-gnu dependencies"
        # TODO
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing MACOS dependencies"
        brew install fzf # For fuzzy searching
        brew install ripgrep # For file searching
        brew install jesseduffield/lazygit/lazygit # For git
        brew install bat # For syntax highlighting
        brew install ranger # For directory and file browsing

        # Terminal
        brew install fish
elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo "Installing cygwing dependencies"
        # TODO: POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
    echo "Installing msys dependencies"
        choco install fzf
        choco install ripgrep
        choco install lazygit
        choco install bat

        # Terminal
        # TODO: Add fish install
elif [[ "$OSTYPE" == "win32" ]]; then
    echo "Installing win32 dependencies"
        # TODO: I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo "Installing freebsd dependencies"
        # TODO: ...
else
        echo "Unidentified OS, can't install dependencies"
fi
