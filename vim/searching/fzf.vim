" FZF File searching shortcuts
" https://github.com/junegunn/fzf.vim
" 
" Add more shortcuts if needed
" https://github.com/junegunn/fzf.vim#commands

noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>c :Commands<CR>
noremap <leader>g :Rg<CR> 
noremap <space><space> :BLines<CR>


command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" '.shellescape(<q-args>), 1, <bang>0)
