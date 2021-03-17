
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

" Buffer becomes hidden when abandoned
set hidden

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


" Remove sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" For sounds on mac
if has("gui_macvim")
	autocmd GUIEnter * set vb t_vb=
endif


""""""""""" SPACING

" Margin to the left
set foldcolumn=1




""""""""""" COLORS AND FONTS

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in GNOME terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif


" Set encoding to utf8
set encoding=utf8



""""""""""" SCHEMA
try
	colorscheme desert
catch
endtry

set background=dark

" Extra options for GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif



""""""""""" SEARCHING


" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Be smart about cases when searching
set smartcase

" Inc search
set incsearch


""""""""""" Text, tab and indent

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




""""""""""" Visual mode
" Pressing * or # searches for current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


""""""""""" Editing mode

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


" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

""""""""""" Status line 
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c



