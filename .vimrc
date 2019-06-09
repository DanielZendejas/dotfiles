set nocompatible              " be iMproved, required

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " required

filetype plugin indent on    " required
set number

set tabstop=2
set shiftwidth=2
set expandtab

" My mappings
map K i<Enter><Esc>

" Leader aliases
let mapleader=' '
map <Leader><Leader> :noh<Enter>
map <Leader>c iconsole.log()<Esc>
map <Leader>h <C-W>h
map <Leader>l <C-W>l
map <Leader>j <C-W>j
map <Leader>k <C-W>k
