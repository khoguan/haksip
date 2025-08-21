" Directory-specific nvim configuration for ~/Hak
" Sets textwidth=76 for markdown files in this directory only

" Create an autocmd to set textwidth=76 for markdown files in this directory
autocmd FileType markdown setlocal textwidth=76
autocmd FileType markdown setlocal colorcolumn=+1
