syntax enable
  
" vim specific stuff
" 
" leader
let mapleader=","
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Make `jj` throw you into normal mode
inoremap jj <esc>
" set line numbers on
set number
" highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu
" highlight matching brackets
set showmatch
" search as characters are entered
set incsearch
" highlights search result
set hlsearch
" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" paste over without overwriting register
xnoremap p "_dP

" always show selected character count
set showcmd
