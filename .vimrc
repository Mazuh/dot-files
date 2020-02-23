set nocompatible
filetype off

" theme
colorscheme elflord

" indent per file type
filetype plugin indent on
autocmd Filetype sh setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=2 sw=2 expandtab
autocmd Filetype css setlocal sts=2 sw=2 expandtab
autocmd Filetype scss setlocal sts=2 sw=2 expandtab

" syntax highlighting
syntax on

" highlight matched words on searching
set hlsearch

" backspace works as other softwares
set backspace=indent,eol,start

" show line numbers
set number

" highlight the current row containing the cursor
set cursorline
highlight CursorLine cterm=bold
