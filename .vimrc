set number
set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
set autoindent
syntax on
set ignorecase
set smartcase
set incsearch
set hlsearch
set nobackup
set history=150
set showmatch
set noswapfile 


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'derekwyatt/vim-fswitch'
Plug 'tpope/vim-fugitive'


call plug#end()

"start NERDTree when Vim opening on folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"start NERDTree when Vim opening without file
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:airline_powerline_fonts = 1
let g:ycm_confirm_extra_conf = 1
let g:ycm_extra_conf_globlist = ['~/.vimr/.ycm.conf']
let g:ycm_goto_buffer_comand = 'horizonstal-split'

nnoremap <C-g> :YcmCompleter GoTo<CR>
map <F2> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.py
	\set tabstop=4
	\set shiftwidth=4
	\set textwidth=80
	\set fileformat=unix

