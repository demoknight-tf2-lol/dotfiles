call plug#begin('~/.local/share/nvim/plugged')

" general vim config
let g:python3_host_prog="/bin/python3"
set wrap
set number
set relativenumber
set tabstop=8
set softtabstop=-1
set shiftwidth=0
set noexpandtab
syntax enable
filetype plugin indent on

" language specific overrides
autocmd Filetype rust setlocal tabstop=4 noexpandtab softtabstop=-1 shiftwidth=0

" install plugins
Plug 'rust-lang/rust.vim'
Plug 'Chiel92/vim-autoformat'

" plugin configs
let g:rustfmt_autosave = 1
noremap <F3> :Autoformat<CR>

call plug#end()

