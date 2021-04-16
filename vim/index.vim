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

" Surround
Plug 'tpope/vim-surround'

" Fuzzy finding and grep
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Which key
Plug 'liuchengxu/vim-which-key'

" Commenting
Plug 'preservim/nerdcommenter'

" Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" File navigation
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' " Needed for ranger in neovim read more here: [Vim Ranger](https://github.com/francoiscabrol/ranger.vim)
Plug 'scrooloose/nerdtree'

" Schema
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
 
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
call SourceFile('base/terminal.vim')

" Searching
call SourceFile('searching/index.vim')
call SourceFile('searching/fzf.vim')

" Completion
call SourceFile('completion/index.vim')
call SourceFile('completion/prettier.vim')
call SourceFile('completion/coc.vim')


" UI
call SourceFile('ui/index.vim')
call SourceFile('ui/colors.vim')
call SourceFile('ui/schema.vim')
call SourceFile('ui/sounds.vim')
call SourceFile('ui/which_key.vim')
