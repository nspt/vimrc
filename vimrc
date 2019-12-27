"插件加载
call plug#begin('~/.vim/bundle')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

"YouCompleteMe设置，提示从输入两个字符后开始有效
let g:ycm_semantic_triggers = {
							\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
							\ }

"显示行号及相对行号
set number
set relativenumber

"取消tab->空格的自动转换，tab宽8，space-tab宽4
set noexpandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

"相同缩进量视为一个折叠块，
set foldmethod=indent

"高亮搜索关键词，取消即时搜索（一边输入一边匹配）
set hlsearch
set noincsearch

"隐藏不显示的缓冲区，从而避免切换缓冲区时的强制保存
set hidden

"光标所在行添加下划线
set cursorline
"set list
"set listchars=tab:>-

"基本文件类型检测和语法提示
filetype on
syntax on

"取消一行内容太长时的自动“折叠”
set nowrap

"优先使用当前目录下的.tags作为ctags跳转配置，若无则递归向上级目录寻找
set tags=./.tags;,.tags

"nerdTree插件的配置，该插件用于显示当前目录下的文件，C-n打开文件树
"当用vim编辑目录时，默认显示nerdTree文件树
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"airline插件，将缓冲区文件以常见的IDE标签形式显示，C-l跳至下一缓冲区，C-h相反
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
