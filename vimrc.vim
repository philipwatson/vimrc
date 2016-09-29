" start vundle
set nocompatible   " don't want to be vi (vim default anyway)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
call vundle#end()
filetype plugin indent on
" end vundle


syntax enable
set number         " show line number in gutter

set tabstop=3      " number of visual spaces per TAB
set softtabstop=3  " number of spaces in tab when editing
set shiftwidth=3   " when using << or >>
set expandtab      " tabs are spaces

set incsearch      " first match will be shown while typing
set hlsearch       " keep on showing all matches after /word [ENTER]

set splitright     " vertical split is left by default
set splitbelow     " horizonal split is top by default

autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

set backspace=indent,eol,start

set encoding=utf-8
set laststatus=2
"set t_Co=256
"set term=xterm-256color

let g:airline_powerline_fonts = 1
