set nocompatible
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" originalrepos on github
	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/vimproc'
	NeoBundle 'VimClojure'
	NeoBundle 'Shougo/vimshell'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/neocomplcache'
	NeoBundle 'Shougo/neosnippet'
	NeoBundle 'jpalardy/vim-slime'
	NeoBundle 'scrooloose/syntastic'
	" ""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
call neobundle#end()
filetype plugin indent on
filetype indent on

syntax enable
set nofoldenable

" colorscheme
set background=dark

" Set UTF-8 as encoding
set encoding=utf-8

" Display line number
set number
set tabstop=4	" tabspace

" set autoindent
set autoindent

" No more annoying sounds
set visualbell

set nobackup
set noswapfile
set backupdir-=.

" remap commands
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap ; :
nnoremap f <C-f>
nnoremap b <C-b>
