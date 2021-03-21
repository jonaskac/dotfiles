
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SCHEMA 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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



