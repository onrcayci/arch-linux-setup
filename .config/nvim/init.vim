set nocompatible

" {{{ Plug Setup
filetype off

call plug#begin('~/.local/share/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" File explorer git status plugin
Plug 'xuyuanp/nerdtree-git-plugin'

" Statusline
Plug 'vim-airline/vim-airline'

" Comment plugin
Plug 'scrooloose/nerdcommenter'

" Syntax checking
Plug 'w0rp/ale'

" Vim themes
Plug 'flazz/vim-colorschemes'

" Python auto-complete
Plug 'davidhalter/jedi-vim'

" Multi-language support
Plug 'sheerun/vim-polyglot'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Vim icons
Plug 'ryanoasis/vim-devicons'

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

let python3_host_prog='python'

" Plugin Settings
let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete=1

let NERDTreeShowHidden=1
let NERDTreeSortHiddenFirst=1
let NERDTreeHighlightCursorline=0
let NERDTreeIgnore=['.git\b']
let NERDTreeShowLineNumbers=0
let NERDTreeWinPos='right'
let NERDTreeMinimalUI=1

" Keybindings
nnoremap <silent> <C-x> :NERDTreeToggle<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <Leader>t :term<CR>

" Theme
colorscheme firewatch
