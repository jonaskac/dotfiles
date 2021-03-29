" Install dependencies
" We are using pathogen, since we want this to work on older versions of Vim

let s:vim_runtime = expand('<sfile>:p:h')
function! SourceFile(path) 
    execute 'source' s:vim_runtime.'/'.a:path 
endfunction


call plug#begin(s:vim_runtime.'/dependencies')

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" TODO : Add a way to load  files in the directory
" Base
call SourceFile('base/helpers.vim')
call SourceFile('base/index.vim')
call SourceFile('base/buffers_tabs.vim')
call SourceFile('base/files_directories.vim')
call SourceFile('base/ignore.vim')
call SourceFile('base/index.vim')
call SourceFile('base/misc.vim')
call SourceFile('base/spelling.vim')
call SourceFile('base/windows.vim')


" Searching
call SourceFile('searching/index.vim')
call SourceFile('searching/fzf.vim')

" UI
call SourceFile('ui/index.vim')
call SourceFile('ui/colors.vim')
call SourceFile('ui/schema.vim')
call SourceFile('ui/sounds.vim')
