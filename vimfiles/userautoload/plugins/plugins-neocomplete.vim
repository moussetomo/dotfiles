" enable on startup
let g:neocomplete#enable_at_startup = 1

" # of candidates on pop-up menu
let g:neocomplete#max_list = 50

" length of keyword, defaults to 80
let g:neocomplete#max_keyword_width = 80
let g:netcomplete#enable_ignore_case = 1
highlight Pmenu ctermbg = 6
highlight PmenuSel ctermbg = 3
highlight PmenuSbar ctermbg = 0

inoremap <expt><CR> pumvisible() ? neocomplete#close_popup() : "<CR>"
