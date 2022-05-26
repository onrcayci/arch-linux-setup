set nocompatible

filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'

call plug#end()

filetype plugin indent on
syntax on

set number

set autoindent

set wildmenu

set incsearch
set hlsearch

set mouse=a
set backspace=indent,eol,start

set splitbelow
set splitright

set nobackup
set noundofile
set noswapfile

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
let NERDTreeSortHiddenFirst=1

nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <C-s> :w<CR>

colorscheme OceanicNext
