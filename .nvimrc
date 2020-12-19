call plug#begin('~/.local/share/nvim/plugged')

" general vim config
set wrap
set number
syntax enable
filetype plugin indent on

" install plugins
Plug 'rust-lang/rust.vim'

" plugin configs
let g:rustfmt_autosave = 1

call plug#end()
