""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOUNDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" For sounds on mac
if has("gui_macvim")
	autocmd GUIEnter * set vb t_vb=
endif


