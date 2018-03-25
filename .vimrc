if &compatible 
	set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath ^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	let s:toml_dir = expand('~/.vim/config/')

	" plugin loading
	call dein#load_toml(s:toml_dir . 'dein.toml', {'lazy': 0})
	" lazy plugin loading
	"call dein#load_toml(s:toml_dir, '/dein_lazy.toml', {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
