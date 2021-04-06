""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We are using ranger to navigate files at the moment

let g:ranger_map_keys = 0
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory

noremap <leader>e :Ranger<CR>
