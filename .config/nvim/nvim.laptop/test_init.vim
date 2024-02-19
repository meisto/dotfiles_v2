" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc


set nocompatible        " Remove compability to vi 
syntax enable           " Enable syntax highlighting
filetype plugin on      " Enable plugins for specific filetypes
set path+=**            " Configure path to include subdirs
set wildmenu            " Enable better menu
set number              " Display absolute number on each line
" set relativenumber    " Display relative number on each line
set encoding=utf-8
set history=100         " Number of cl calls that are remembered
set laststatus=2        " Enable the statusline
set t_Co=256            " Always enable color option

set incsearch
set nowrap
set ignorecase
set smartcase
set scrolloff=4
set colorcolumn=80
set hidden

set expandtab           " replace tabs with spaces
set smarttab            " smarter tab handling
set tabstop=8           " Set displayed size of tabs
set shiftwidth=3        " Set number of spaces for tabs
set lbr                 " Break in spaces instead in words (display only)
set autoindent          " Copy indent of line when starting the next one
set smartindent         " Better indent in C-like languages (see :help)
set hlsearch            " Mark results of the last search

let mapleader = ' '
set timeoutlen=1000
nnoremap <leader>s :FZF<CR>
nnoremap <leader>n :nohlsearch<CR>
nnoremap <leader>b :buffer 
nnoremap <Tab> :bn<CR>


" require("myfunctions")
lua << EOF
   tools = require('meisto.tools')
EOF
