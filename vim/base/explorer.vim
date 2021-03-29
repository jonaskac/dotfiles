""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ExplorerIsOpen=0

function ToggleExplorer()
    if g:ExplorerIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent execute "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:ExplorerIsOpen=0
    else
        let g:ExplorerIsOpen=1
        silent Lexplore
    endif
endfunction

noremap <leader>e :call ToggleExplorer()<CR>
