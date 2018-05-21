" display bookmark on startup
let g:NERDTreeShowBookMarks=1

" start NERDTree automatically
autocmd vimenter * NERDTree

" do not start NERDTree on vim startup with file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


