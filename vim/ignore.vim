
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IGNORE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore compiled files

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
