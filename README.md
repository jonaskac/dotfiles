# MY DOTFILES

To install the dotfiles go into the directory and run `./install.sh`.

Using a lot of reference from

- [AMIX VIMRC config](https://github.com/amix/vimrc/)
- [NVCode](https://github.com/ChristianChiarulli/nvcode)
- [dots](https://github.com/drn/dots)

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

:CocInstall coc-tsserver coc-json coc-eslint coc-prettier

Add the following to the CocConfig file (you get to it by typing `:CocConfig`):

TODO: Add this to a versioned file that is included in this repository (people seem to be symlinking it)

```json
{
  "coc.preferences.formatOnSaveFiletypes": [
    "css",
    "markdown",
    "typescript",
    "json",
    "javascript"
  ]
}
```

# TODO:

- Code completion (there are some alternatives, see to that they work with treesitter & nvim lsp)
- Git gutter
- zsh & bash installations
- Interactive installation script
- Add fuzzy line search to fzf#vim#grep functionality so that we don't have to write the exact line

## Possibilities:

- Checkout telescope [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Fig for installations: [FIG](https://github.com/wincent/wincent/tree/master/fig)
