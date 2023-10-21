call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'docker/docker'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

set nocompatible
set noswapfile

colorscheme gruvbox

syntax on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set number
set ruler
set scrolloff=55

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Indentation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" keyboard mapping
let mapleader = " "
let localleader = "\<tab>"

" Delete Line with ctrl+d
inoremap <c-d> <esc>ddi
nnoremap <c-d> dd

" Lowercase the whole line
inoremap <c-u><c-u> <esc>Vui
nnoremap <c-u><c-u> Vu<esc>

" Uppercase the whole line
inoremap <c-u> <esc>VUi
nnoremap <c-u> VU<esc>

" Select all
inoremap <c-a> <esc>ggVG
nnoremap <c-a> ggVG

" double quote wrapping
nnoremap <leader" viw<esc>a"<esc>bi"<esc>lel

" single quote wrapping
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" fixup shortcut
nnoremap <leader>f ciwfixup<esc>j0

" Navigation
nnoremap <leader><Left> gT
nnoremap <leader><Right> gt
nnoremap <leader><Down> <c-w><c-w>

" NERDTree
set modifiable
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

