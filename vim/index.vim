" Install dependencies
" We are using pathogen, since we want this to work on older versions of Vim

let s:vim_runtime = expand('<sfile>:p:h')
call plug#begin(s:vim_runtime.'/dependencies')

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" TODO : Add a way to load  files in the directory

" Base
source vim/base/helpers.vim
source vim/base/index.vim
source vim/base/buffers_tabs.vim
source vim/base/files_directories.vim
source vim/base/ignore.vim
source vim/base/index.vim
source vim/base/misc.vim
source vim/base/spelling.vim
source vim/base/windows.vim


" Searching
source vim/searching/index.vim

" UI
source vim/ui/index.vim
source vim/ui/colors.vim
source vim/ui/schema.vim
source vim/ui/sounds.vim
