# MY DOTFILES

To install the dotfiles go into the directory and run `./install.sh`.

Using a lot of reference from

- [AMIX VIMRC config](https://github.com/amix/vimrc/)
- [NVCode](https://github.com/ChristianChiarulli/nvcode)
- [dots](https://github.com/drn/dots)
- [SpaceVim](https://spacevim.org/)

## Not added in installation yet

- Add this to your bash or zsh file

```bash
export FZF_DEFAULT_OPTS='-m --height 50% --layout=reverse --border'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi
```

## CoC

Add these installations to the install script:

:CocInstall coc-tsserver coc-json coc-eslint coc-prettier coc-snippets

Add the following to the CocConfig file (you get to it by typing `:CocConfig`):

TODO: Add this to a versioned file that is included in this repository (people seem to be symlinking it)

```json
{
  "coc.preferences.formatOnSaveFiletypes": [
    "css",
    "markdown",
    "typescript",
    "json",
    "javascript",
    "xml"
  ]
}
```

# Keybindings that needs updating

- `<Space>s` does not start searching for something with S but opens up an interactive buffer.

# TODO:

- [ ] Evalutate what should be the `<leader>` button
- [x] Line commenting [NERDCommenter](https://vimawesome.com/plugin/the-nerd-commenter)
      -- [ ] Check out if we can add line commenting [possibility](https://vimawesome.com/plugin/commentary-vim)
      I'm not superhappy with NERDCommenter
- [x] [Which key](https://github.com/liuchengxu/vim-which-key)
      -- [ ] Configure a better which key setup
- [x] Code completion (there are some alternatives, see to that they work with treesitter & nvim lsp, test out nvim-compe)
      -- [ ] Setup your own completion (https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c)
      -- [ ] You Complete Me is an alternative to CoC - [YouCompleteMe](https://vimawesome.com/plugin/youcompleteme)
- [ ] HTML [Emmet](https://vimawesome.com/plugin/emmet-vim)
- [ ] Linting with [Ale](https://vimawesome.com/plugin/ale)
- [ ] Goyo for mindfullnes coding [Goyo](https://github.com/junegunn/goyo.vim)
- [x] Git gutter
- [ ] Git - [Fugitive](https://vimawesome.com/plugin/fugitive-vim)
      -- [ ] Add git blame functionality
- [ ] Zsh & bash installations
- [ ] [Syntactic](https://vimawesome.com/plugin/syntastic)
- [ ] Interactive installation script (when we run the installation we should get some options)
- [x] Add fuzzy line search to fzf#vim#grep functionality so that we don't have to write the exact line
- [ ] Update instructions so that we can use VSCode (https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
      -- [ ] VSCode has some good features that Neovim doesn't support (e.g. live share). When using this we want to install the (https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
- [x] [Ranger](https://ranger.github.io/) for [Vim](https://github.com/francoiscabrol/ranger.vim)
      -- [ ] Check out the alternative [RNVIMR](https://awesomeopensource.com/project/kevinhwang91/rnvimr)

## Possibilities:

- Checkout telescope [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Fig for installations: [FIG](https://github.com/wincent/wincent/tree/master/fig)
- [Airline](https://vimawesome.com/plugin/vim-airline-superman)

## Study

- [Lua in Nvim](https://github.com/nanotee/nvim-lua-guide)
