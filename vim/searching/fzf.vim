" FZF File searching shortcuts
" https://github.com/junegunn/fzf.vim
" 
" Add more shortcuts if needed
" https://github.com/junegunn/fzf.vim#commands

noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>c :Commands<CR>
noremap <leader>g :JKRg<CR>
noremap <space><space> :BLines<CR>

" node_modules/* should be honoured by gitignore in the directory that we are working in
" but it doesn't seem to work.

command! -bang -nargs=* JKRg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
