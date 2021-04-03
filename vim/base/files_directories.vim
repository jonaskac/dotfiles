""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Refresh file when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Turn backup off
set nobackup
set nowritebackup
set nowb
set noswapfile


" Set standard filetype
set ffs=unix,mac,dos


" Enable filetype plugins
filetype plugin on
filetype indent on


" Fast saving
nmap <leader>w :w!<cr>

" SUDO save files
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UNDO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Buffer becomes hidden when abandoned
set hidden

" Means that we can undo even after close of buffer works with "set hidden"

try
    set undodir=~/.vim_temp/undodir
    set undofile
catch
endtry


" Switch working directory to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""" Return to last positon

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


