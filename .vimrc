set nocompatible
filetype off

" vundle plugin manager and its plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'xero/blaquemagick.vim'
call vundle#end() 

colorscheme desert

" indent per file type
filetype plugin indent on
autocmd Filetype sh setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=4 sw=4 expandtab

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

" fuzzy search as ctrl+P
set rtp+=/usr/local/opt/fzf
nmap <silent> <C-p> :FZF -m<cr>

" multiple tabs management
nnoremap <S-Tab>   :tabprevious<CR>
nnoremap <Tab>     :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap H gT
nnoremap L gt
