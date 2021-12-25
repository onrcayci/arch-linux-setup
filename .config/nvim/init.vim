set nocompatible

" {{{ vim-plug setup
filetype off

call plug#begin('~/.local/share/nvim/plugged')

" File explorer plugin
Plug 'scrooloose/nerdtree'

" File explorer git status plugin
Plug 'xuyuanp/nerdtree-git-plugin'

" Statusline plugin
Plug 'vim-airline/vim-airline'

" Comment plugin
Plug 'scrooloose/nerdcommenter'

" Syntax checking
Plug 'w0rp/ale'

" Color themes
Plug 'flazz/vim-colorschemes'

" Python autocomplete plugin
Plug 'davidhalter/jedi-vim'

" Multi-language support
Plug 'sheerun/vim-polyglot'

" Autocomplete plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Auto bracket and quote pairing plugin
Plug 'jiangmiao/auto-pairs'

" Nice file and folder icons
Plug 'ryanoasis/vim-devicons'

" Git diff plugin
Plug 'airblade/vim-gitgutter'

" Text filtering and alignment plugin
Plug 'godlygeek/tabular'

call plug#end()
" }}}

filetype plugin indent on
syntax on

" {{{ Vim settings
set number
set autoindent
set wildmenu
set incsearch

set splitbelow
set splitright

set nobackup
set noundofile
set noswapfile

let python3_host_prog='/Users/onurcayci/.pyenv/versions/miniconda3-latest/bin/python'
" }}}

" {{{ Plugin settings
let deoplete#enable_at_startup=1
let deoplete#auto_complete=1

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
let NERDTreeWinPos='right'
let NERDTreeSortHiddenFirst=1
" }}}

" {{{ Keybindings
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>s :w<CR>
nnoremap <silent> <Leader>t :term<CR>
" }}}

" {{{ Colorscheme
colorscheme Tomorrow-Night
"}}}
