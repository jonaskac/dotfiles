# MY DOTFILES

To install the dotfiles go into the directory and run `./install.sh`.


Using a lot of reference from 
* [AMIX VIMRC config](https://github.com/amix/vimrc/)
* [NVCode](https://github.com/ChristianChiarulli/nvcode)
* [dots](https://github.com/drn/dots)

## Not added in installation yet

- Add this to your bash or zsh file

```bash
export FZF_DEFAULT_OPTS='-m --height 50% --layout=reverse --border'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi
```

# TODO:

* Code completion (there are some alternatives, see to that they work with treesitter & nvim lsp)
* Git gutter
* zsh & bash installations
* Interactive installation script
* Add fuzzy line search to fzf#vim#grep functionality so that we don't have to write the exact line


## Possibilities:

* Checkout telescope [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* Fig for installations: [FIG](https://github.com/wincent/wincent/tree/master/fig)
