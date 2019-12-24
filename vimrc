set nocompatible

call plug#begin('~/.vim/bundle')

Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

let g:ycm_semantic_triggers = {
							\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
							\ }

set number
set relativenumber
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set foldmethod=indent
set hlsearch
set noincsearch
set hidden "switch between buffers without having to save first.
set cursorline
"set list
"set listchars=tab:>-
filetype on
syntax on
set nowrap
set tags=./.tags;,.tags

let NERDTreeShowHidden=1

map <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
