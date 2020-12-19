call plug#begin('~/.local/share/nvim/plugged')

" general vim config
set wrap
set number
set relativenumber
set tabstop=8
set softtabstop=-1
set shiftwidth=0
set noexpandtab
syntax enable
filetype plugin indent on
autocmd Filetype rs setlocal tabstop=8 noexpandtab softtabstop=-1 shiftwidth=0

" install plugins
Plug 'rust-lang/rust.vim'

" plugin configs
let g:rustfmt_autosave = 1

call plug#end()

