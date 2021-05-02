# MY DOTFILES

Base for installing for a development computer.

To install the dotfiles go into the directory and run `./install.sh`.

References:

- [AMIX VIMRC config](https://github.com/amix/vimrc/)
- [LunarVim](https://github.com/ChristianChiarulli/LunarVim)
- [dots](https://github.com/drn/dots)
- [SpaceVim](https://spacevim.org/)
- [VSCodeVim](https://github.com/VSCodeVim/Vim)

## Not added in installation yet

- Add this to your bash, fish or zsh file

```bash
export FZF_DEFAULT_OPTS='-m --height 50% --layout=reverse --border'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi
```

# TODO:

## Installation

- [ ] [Git shortcuts/aliases](https://githowto.com/aliases)
- [ ] Interactive installation script (when we run the installation we should get some options)
- [ ] Fig for installations: [FIG](https://github.com/wincent/wincent/tree/master/fig)
- [ ] On installation script run it should run the command "PlugInstall" in vim, and install the dependencies in Coc

## Shell

- [ ] Zsh & bash installations
  - [ ] [Fish shell](https://fishshell.com/)
- [ ] [FZF](https://github.com/jorgebucaran/fisher)

## VIM

- [Vim inspector](https://vimawesome.com/plugin/vimspector)
  - [ ] [Debugger](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation)

## VSCode

- [VSCodeVim](https://github.com/VSCodeVim/Vim)
- [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [CSS Intellisence](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
- [HTML Snippets](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets)
- [Import cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
- [Markdown Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Which Key](https://github.com/VSpaceCode/vscode-which-key)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)

## Programming

- [ ] Breakpoints
- [ ] Preview on search
- [ ] HTML [Emmet](https://vimawesome.com/plugin/emmet-vim)
- [ ] Linting with [Ale](https://vimawesome.com/plugin/ale)
- [x] Git gutter
  - [ ] [Signify](https://vimawesome.com/plugin/vim-signify) as an alternative
- [x] Git - [Fugitive](https://vimawesome.com/plugin/fugitive-vim)
  - [ ] Add git blame functionality
- [ ] Update instructions so that we can use VSCode (https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
  - [ ] VSCode has some good features that Neovim doesn't support (e.g. live share). When using this we want to install the (https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
- [ ] [Syntactic](https://vimawesome.com/plugin/syntastic)
- [x] [Airline](https://vimawesome.com/plugin/vim-airline-superman)
  - [ ] [Themes](https://github.com/vim-airline/vim-airline/wiki/Screenshots)
- [ ] QuickFix list handling both for diagnostics as well as error in the code (might already be fixes for this in place, need to find out what they are)

### Other

- [x] Evalutate what should be the `<leader>` button
- [ ] [Which key](https://github.com/liuchengxu/vim-which-key)
  - [ ] Configure a better which key setup
- [ ] Goyo for mindfullnes coding [Goyo](https://github.com/junegunn/goyo.vim)
- [x] Add fuzzy line search to fzf#vim#grep functionality so that we don't have to write the exact line
- [ ] Add preview to fuzzy find (https://nicedoc.io/junegunn/fzf#preview-window)
- [x] [Ranger](https://ranger.github.io/) for [Vim](https://github.com/francoiscabrol/ranger.vim)
  - [ ] Check out the alternative [RNVIMR](https://awesomeopensource.com/project/kevinhwang91/rnvimr)

### Possibilities:

- Checkout telescope [Telescope](https://github.com/nvim-telescope/telescope.nvim)

### Study

- [Lua in Nvim](https://github.com/nanotee/nvim-lua-guide)
  -- [Lua](http://www.lua.org/manual/5.4/manual.html#2)
- [VIM Marks](https://vim.fandom.com/wiki/Using_marks)
- [VSCode <-> Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) (sometimes I want to use VSCode, this is a good way to get the best of both worlds)
