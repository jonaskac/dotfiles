""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history for VIM to remember
set history=5

" Enable filetype plugins
filetype plugin on
filetype indent on

" Refresh file when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Change the leader to ","
let mapleader = ","



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source vim/helpers.vim
source vim/mapping.vim 
source vim/files.vim
source vim/ignore.vim
source vim/moving.vim
source vim/ui.vim
source vim/spelling.vim
