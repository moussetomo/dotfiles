call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim' " color scheme
Plug 'itchyny/lightline.vim' " status line
Plug 'ntpeters/vim-better-whitespace' " visualize trailing spaces
Plug 'Yggdroot/indentLine' " visualize indents
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} " File Explore
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'} " Tag List
Plug 'tpope/vim-fugitive' " Git blame
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() }}
" fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set number
" Use TrueColor
set termguicolors
set cursorline

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
set hlsearch

set nobackup
set nowritebackup

set cmdheight=2

" colorscheme onedark

" Change status line colorscheme
let g:lightline = {'colorscheme': 'onedark'}
let g:python_host_prog = $HOME . '/.pyenv/versions/2.7.16/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/3.6.10/bin/python'
let g:node_host_prog = $HOME . '/node_modules/neovim/bin/cli.js'

nmap <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" coc settings
" Go to Denifition
set updatetime=300
set shortmess+=c
nmap <F12> <Plug>(coc-definition)
" Go to Reference
nmap <F10> <Plug>(coc-references)
" Go to Tye definition
nmap <F9> <Plug>(coc-type-definition)
" Go to Implementation
nmap <F11> <Plug>(coc-implementation)


" Create new tab
nmap <C-t> :tablast <bar> tabnew<CR>
nmap <Right> :tabnext<CR>
nmap <Left> :tabprevious<CR>

" fuzzy search
nnoremap <S-f> :FZFFileList<CR>
command! FZFFileList call fzf#run({
    \ 'source': 'find . -type d \( -name .git -o -name .clangd \) -prune -o ! -name compile_commands.json',
    \ 'sink': 'e'})

" MRU search
nnoremap <S-r> :FZFMru<CR>
command! FZFMru call fzf#run({
    \ 'source': v:oldfiles,
    \ 'sink': 'tabe',
    \ 'options': '-m -x +s',
    \ 'down': '40%'})
