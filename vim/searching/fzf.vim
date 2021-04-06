" FZF File searching shortcuts
" https://github.com/junegunn/fzf.vim
" 
" Add more shortcuts if needed
" https://github.com/junegunn/fzf.vim#commands

noremap <leader>ff :Files<CR>
noremap <leader>fb :Buffers<CR>
noremap <leader>fc :Commands<CR>
noremap <leader>fg :JKRg<CR>
noremap <space><space> :BLines<CR>

" node_modules/* should be honoured by gitignore in the directory that we are working in
" but it doesn't seem to work.

command! -bang -nargs=* JKRg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
