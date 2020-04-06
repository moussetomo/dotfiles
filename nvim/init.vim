call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim' " color scheme
Plug 'itchyny/lightline.vim' " status line
Plug 'ntpeters/vim-better-whitespace' " visualize trailing spaces
Plug 'Yggdroot/indentLine' " visualize indents
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} " File Explore
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'} " Tag List
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set number
" Use TrueColor
set termguicolors

colorscheme onedark

" Change status line colorscheme
let g:lightline = {'colorscheme': 'onedark'}
let g:python_host_prog = $HOME . '/.pyenv/versions/2.7.16/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/3.6.8/bin/python'
let g:node_host_prog = '/usr/local/lib/node_modules/neovim/bin/cli.js'

nmap <C-e> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
"スペースdfでDefinition
nmap <F12> <Plug>(coc-definition)
"スペースrfでReferences
nmap <F10> <Plug>(coc-references)
