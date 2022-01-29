" After installing nvim, put this file in ~/.config/nvim/init.vim
"
" Auto-Install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin("~/.vim/plugged")
" Plugin Section
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
set bg=dark
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Chiel92/vim-autoformat'
call plug#end()

autocmd vimenter * nested colorscheme gruvbox

"Config Section
" termguicolors seems to be breaking colorscheme so comment that out
if (has("termguicolors"))
  set termguicolors
endif
colorscheme koehler
syntax enable

""" File Searching (fzf)
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

""" Vim stuff
source conf/vim.vim
