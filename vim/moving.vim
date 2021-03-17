
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""" Visual mode
" Pressing * or # searches for current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

""""""""""" Return to last positon

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

