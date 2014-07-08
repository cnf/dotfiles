" Vundle: {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" :BundleInstall
" or run
" vim +BundleInstall +qall
Bundle 'gmarik/vundle'

"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
"Bundle 'itchyny/lightline.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sleuth'
Bundle 'scrooloose/syntastic'
Bundle 'cnf/vim-pointless'

Bundle 'kien/ctrlp.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'vim-scripts/Arduino-syntax-file'
Bundle 'jnwhiteh/vim-golang'

"Bundle 'ervandew/supertab'

Bundle 'tpope/vim-markdown'
Bundle 'tomtom/tcomment_vim'
Bundle 'rodjek/vim-puppet'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'airblade/vim-gitgutter'
"Bundle 'msanders/snipmate.vim'
"Bundle 'ervandew/supertab'
"Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on
"}}}

" General Config: {{{
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set timeoutlen=250

"set number
"set relativenumber
set cursorline
set mouse=v

set modelines=5

" Wrapping
"set showbreak=...

" Don't put swp files in pwd
set dir='~/.vim/swp,~/tmp,/var/tmp,/tmp'

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Auto save files when focus is lost
au FocusLost * :wa
set autowrite

set pastetoggle=<f5>

set nomesg                          " because being talked to during an edit is aggravating
" }}}

" Tab Config: {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set smarttab

autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
" }}}

" Search Related: {{{
set ignorecase                      " search case insensitive
set smartcase                       " unless search contains caps
set incsearch                       " Show matches while typing
set hlsearch                        " When there is a previous search pattern, highlight all its matches
" }}}

" Show Invisible Characters: {{{
set list
set listchars=tab:▸\ ,trail:.
" set listchars=tab:▸\ ,trail:⋅,nbsp:⋅
"set listchars=tab:▸\ ,eol:¬
" :highlight ExtraWhitespace ctermbg=red guibg=red
" autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
" }}}

" Show Syntax Colors: {{{
syntax enable
set t_Co=256 "enable 256 colors
set background=dark
color pointless

au! BufNewFile,BufRead Vagrantfile set filetype=ruby
au! BufNewFile,BufRead *.json set ft=javascript
" }}}

" Ctrl-P: {{{
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <C-b><C-b> :b#<CR>
" }}}

" PowerLine: {{{
" :PowerlineClearCache
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'
" }}}

" Airline: {{{
let g:airline_powerline_fonts = 0
let g:airline#extensions#hunks#non_zero_only = 1
" }}}

" Syntastic: {{{
" let g:syntastic_c_checker = "clang"
" let g:syntastic_cpp_checker = "clang++"

let g:syntastic_c_compiler = 'clang++'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_c_checkers = [ "gcc" ]
let g:syntastic_cpp_checkers = [ "gcc" ]
let g:syntastic_go_checkers = [ "go", "golint" ]

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '⮀'
let g:syntastic_style_warning_symbol = '⮁'

nnoremap <leader>[ :lnext<cr>
nnoremap <leader>] :lprevious<cr>

" }}}

" Development: {{{
" Show syntax highlighting groups for word under cursor
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" }}}

" Code Folding: {{{
set foldmethod=syntax   "fold based on syntax
set foldnestmax=1       "deepest fold is 1 levels
set foldenable        "dont fold by default
" set foldlevel=1         "this is just what i use
nnoremap zz zMzO
" }}}


" vim: set foldmethod=marker : "
