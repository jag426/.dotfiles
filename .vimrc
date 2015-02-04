set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'wting/rust.vim'

" all Plugins must be added before this
call vundle#end()		" required
filetype plugin indent on	" required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colorscheme
syntax on
set background=dark
colorscheme solarized
