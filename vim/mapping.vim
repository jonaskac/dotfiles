
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>

" SUDO save files
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Map space to / (search)
map <space> /
map <C-space> ?

" Moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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

" Switch working directory to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify behaviour when switchin between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Helpers
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
