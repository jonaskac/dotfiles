""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to cursor when using j/k
set so=7

" Set language
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on Wildmenu
set wildmenu

" Always show the current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Don't redraw while executing micros (performance)
set lazyredraw

" Regex
set magic

" Show matching brackets when carrot is over it
set showmatch

" How often per second to blink
set mat=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPACING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Margin to the left
set foldcolumn=1


" Text, tab and indent

" Spaces instead of tabs
set expandtab

" Smart tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Line break on {tw} chars
set lbr
set tw=500

" Indenting
set autoindent
set smartindent
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VISUAL MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing * or # searches for current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING MODE 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap VIM 0 to first non-blank char
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
