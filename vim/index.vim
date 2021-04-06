" Install dependencies
" We are using pathogen, since we want this to work on older versions of Vim

let s:vim_runtime = expand('<sfile>:p:h')
function! SourceFile(path) 
    execute 'source' s:vim_runtime.'/'.a:path 
endfunction


call plug#begin(s:vim_runtime.'/dependencies')
" Completion
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finding and grep
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'

" Which key
Plug 'liuchengxu/vim-which-key'

" Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" File navigation
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' " Needed for ranger in neovim read more here: [Vim Ranger](https://github.com/francoiscabrol/ranger.vim)

" Schema
Plug 'morhetz/gruvbox'
 
call plug#end()

" TODO : Add a way to load all files in the directory
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
call SourceFile('base/explorer.vim')


" Searching
call SourceFile('searching/index.vim')
call SourceFile('searching/fzf.vim')

" Completion
call SourceFile('completion/index.vim')
call SourceFile('completion/prettier.vim')
call SourceFile('completion/coc.vim')

" Which key
call SourceFile('ui/which_key.vim')

" UI
call SourceFile('ui/index.vim')
call SourceFile('ui/colors.vim')
call SourceFile('ui/schema.vim')
call SourceFile('ui/sounds.vim')
