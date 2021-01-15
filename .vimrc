syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'

call plug#end()

let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:airline_branch = ''
let g:airline_dirty='⚡'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_crypt = '🔒'
let g:airline_maxlinenr = ''
let g:airline_linenr = '☰'

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
