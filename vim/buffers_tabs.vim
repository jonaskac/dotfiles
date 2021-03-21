
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS & TABS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Close current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all buffers
map <leader>ba :bufdo bd<cr>

" Navigate between buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Handling tabs
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Toggle between this and the last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Specify behaviour when switchin between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

