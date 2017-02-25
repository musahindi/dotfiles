set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'fugitive.vim'
Plugin 'ruby.vim'
Plugin 'cocoa.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'

call vundle#end()

filetype plugin indent on    " Enable indentation settings on a per file basis
filetype on                  " Re-Enable filetype detection

let mapleader = ','
syntax enable

colorscheme hybrid

set t_Co=256
" Set console highlights to be readable with black background
set bg=dark

" Make GUI colors light on dark
hi Normal guibg=black guifg=white

" Indentation settings
set autoindent          " Copy indent from current line for new line
set nosmartindent       " 'smartindent' breaks right-shifting of # lines
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Per filetype indentation settings
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2
autocmd FileType go setlocal tabstop=2 shiftwidth=2

" Turn on line number for the current line and relative numbers for every
" other line
set number
set relativenumber

set noerrorbells visualbell t_vb= " Disable beep
set backspace=indent,eol,start " Set delete button to delete autoindents, end of lines and start of lines
set hlsearch " Highlights text when searching

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree remapping
map <C-n> :NERDTreeToggle<CR>

" ctrlp plugin remap
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'
