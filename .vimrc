set nocompatible

" Vundle setup start
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File Tree explorer
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

" Syntax checking
Plugin 'w0rp/ale'
Plugin 'ajh17/vimcompletesme'

" Autocomplete
if has('nvim')
	Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plugin 'Shougo/deoplete.nvim'
	Plugin 'roxma/nvim-yarp'
	Plugin 'roxma/vim-hug-neovim-rpc'
endif

" Git Plugins
Plugin 'tpope/vim-fugitive'

" Colorsheme
Plugin 'nanotech/jellybeans.vim'
Plugin 'ghifarit53/tokyonight-vim'

" Python specific plugins
Plugin 'davidhalter/jedi-vim'

" Golang specific plugins
Plugin 'fatih/vim-go'

" Rust specific plugins
Plugin 'rust-lang/rust.vim'

" Startup dashboard
Plugin 'mhinz/vim-startify'

" Comment plugin
Plugin 'scrooloose/nerdcommenter'

" Vim airline status bar
Plugin 'vim-airline/vim-airline'

" Vim devicons
Plugin 'ryanoasis/vim-devicons'

" Vim Markdown plugins
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
" Vundle setup end

filetype plugin indent on   " For plugins to load correctly
syntax on                   " Syntax highlighting

set number          " Line numbers
set autoindent      " Auto indentation for functions
set ruler           " Show file stats
set wildmenu        " Display all matches when tab complete
set hidden          " Switch between buffers without having to save first

set ttyfast         " Faster redrawing
set lazyredraw      " Only redraw when necessary

set splitbelow      " Open new windows below the current window
set splitright      " Open new windows right of the current window

set incsearch       " Enable incremental search

" Tokyo Night color scheme settings
set termguicolors
let g:tokyonight_style='night'
let g:tokyonight_enable_italic=1

" Deoplete settings
let g:deoplete#enable_at_startup=1

" NERDTree settings
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeWinPos='right'
let NERDTreeIgnore=['.git']
let NERDTreeMinimalUI=1

" keybindings
nnoremap <silent> <C-x> :NERDTreeToggle<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-t> :term<CR>

" Temporary file settings
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap/
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/

" colorscheme
colorscheme tokyonight
