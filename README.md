# MY DOTFILES

To install the dotfiles go into the directory and run `./install.sh`.


Using a lot of reference from 
* [AMIX VIMRC config](https://github.com/amix/vimrc/)
* [NVCode](https://github.com/ChristianChiarulli/nvcode)


## Not added in installation yet

- Add this to your bash or zsh file

```bash
export FZF_DEFAULT_OPTS='-m --height 50% --layout=reverse --border'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi
```
