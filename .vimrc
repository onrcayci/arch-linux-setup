set nocompatible

" {{{ Plug Setup
filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim'
Plug 'godlygeek/tabular'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
" }}}

filetype plugin indent on
syntax on

set ruler
set number

set autoindent
set wildmenu
set incsearch

set splitbelow
set splitright

set nobackup
set noswapfile
set noundofile

set backspace=indent,eol,start
set mouse=a

let python3_host_prog='/home/ocayci/.pyenv/versions/3.10.2/bin/python'

" Plugin Settings
let g:airline_powerline_fonts=1

let NERDTreeShowHidden=1
let NERDTreeSortHiddenFirst=1
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1

let g:ale_linters={
\ 'javascript': ['eslint'],
\ 'python': ['mypy']
\ }

let g:ale_fixers={
\ 'python': ['black', 'isort'],
\ 'go': ['gofmt', 'goimports', 'golines'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'json': ['prettier'],
\ 'markdown': ['prettier']
\ }

" Keybindings
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>s :w<CR>
nnoremap <silent> <C-t> :tabNext<CR>

" Theme
colorscheme dracula
