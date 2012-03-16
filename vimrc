" Vundle: {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'cnf/vim-pointless'

filetype plugin indent on
"}}}

" General Config: {{{
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

"set number
"set relativenumber
set cursorline
set mouse=a

set modelines=5

set nomesg                          " because being talked to during an edit is aggravating
" }}}

" Tab Config: {{{
set tabstop=4
set shiftwidth=4
set expandtab
" }}}

" Search Related: {{{
set ignorecase                      " search case insensitive
set smartcase                       " unless search contains caps
set incsearch                       " Show matches while typing
set hlsearch                        " When there is a previous search pattern, highlight all its matches
" }}}

" Show Invisible Characters: {{{
set list
set listchars=tab:▸\ ,eol:¬
" }}}

" Show Syntax Colors: {{{
syntax enable
set t_Co=256 "enable 256 colors
set background=dark
color pointless
" }}}

" PowerLine: {{{
let g:Powerline_symbols = 'fancy'
" }}}

" Development: {{{
" Show syntax highlighting groups for word under cursor
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" }}}


" vim: set foldmethod=marker : "
