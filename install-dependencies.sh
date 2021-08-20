###################################################
# Installs all the relevant dependencies
###################################################
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing linux-gnu dependencies"
        # TODO
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo "Installing MACOS dependencies"
    brew install fzf # For fuzzy searching
    brew install ripgrep # For file searching
    brew install jesseduffield/lazygit/lazygit # For git
    brew install bat # For syntax highlighting
    brew install ranger # For directory and file browsing
    brew install git-lfs

    # Kubernetes
    brew install k9s

    # Cloud
    brew install google-cloud-sdk

    # Programming languages & tools
    brew install n
    brew install go 
    brew install yarn

    # NVIM
    brew install --HEAD luajit
    brew install --HEAD neovim

    # Communication
    brew install --cask slack
    brew install --cask messenger
    brew install --cask microsoft-teams

    # Browsers
    brew install --cask google-chrome
    brew install --cask firefox

    ## VSCode
    brew install --cask vscodium

    # Terminal
    brew install --cask iterm2
    brew install fish
    brew install starship
    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font

    # Tools
    brew install gpg
    brew install --cask google-drive
    brew install htop
    brew install sourcetree

    # Misc
    brew install spotify --cask

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
    # TODO: Add starship install
elif [[ "$OSTYPE" == "win32" ]]; then
    echo "Installing win32 dependencies"
    # TODO: I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo "Installing freebsd dependencies"
    # TODO: ...
else
    echo "Unidentified OS, can't install dependencies"
fi

./install-lunarvim.sh
