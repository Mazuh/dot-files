set nocompatible
filetype off

" syntax highlighting
syntax on

" backspace works as other softwares
set backspace=indent,eol,start

" line numbers on left side
set number

" fuzzy search as ctrl+P
set rtp+=/usr/local/opt/fzf
nmap <silent> <C-p> :FZF -m<cr>

" vundle plugin manager and its plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end() 

" indent per file type
filetype plugin indent on
autocmd Filetype sh setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=4 sw=4 expandtab
