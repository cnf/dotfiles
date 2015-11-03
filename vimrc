" Vundle: {{{
set nocompatible
filetype off

"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#rc()
call vundle#begin()

" :PluginInstall
" or run
" vim +PluginInstall +qall
Plugin 'gmarik/Vundle.vim'

"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
"Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'tpope/vim-sleuth' " Detect indent style
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim' " multi file openenr
Plugin 'tomtom/tcomment_vim' " commenter
Plugin 'airblade/vim-gitgutter'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'msanders/snipmate.vim'
"Plugin 'ervandew/supertab'
"Plugin 'nathanaelkane/vim-indent-guides'

" color scheme
Plugin 'cnf/vim-pointless'

" Syntax
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'vim-scripts/Arduino-syntax-file'
"Plugin 'jnwhiteh/vim-golang' " Deprecated
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'

Plugin 'rodjek/vim-puppet'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'docker/docker', {'rtp': 'contrib/syntax/vim/'}
Plugin 'cespare/vim-toml'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
"}}}

" General Config: {{{
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set timeoutlen=250

set backspace=2    " make backspace work in insert mode

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

set wildignore+=_workspace

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
autocmd FileType go setlocal noexpandtab ts=4 sts=0 sw=4
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

"let g:ctrlp_buffer_func = { 'enter': 'CtrlPMappings' }

"function! CtrlPMappings()
"    nnoremap <buffer> <silent> <C-@> :call <sid>DeleteBuffer()<cr>
"endfunction

"function! s:DeleteBuffer()
"    let path = fnamemodify(getline('.')[2:], ':p')
"    let bufn = matchstr(path, '\v\d+\ze\*No Name')
"    exec "bd" bufn ==# "" ? path : bufn
"    exec "norm \<F5>"
"endfunction
" }}}

" PowerLine: {{{
" :PowerlineClearCache
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'
" }}}

" Airline: {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" Syntastic: {{{
" let g:syntastic_c_checker = "clang"
" let g:syntastic_cpp_checker = "clang++"

let g:syntastic_c_compiler = 'clang++'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_c_checkers = [ "gcc" ]
let g:syntastic_cpp_checkers = [ "gcc" ]
let g:syntastic_go_checkers = [ "godep", "go", "golint"]

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '⮀'
let g:syntastic_style_warning_symbol = '⮁'

nnoremap <leader>[ :lnext<cr>
nnoremap <leader>] :lprevious<cr>

" }}}

" NeoVim: {{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
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
