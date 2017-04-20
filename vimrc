set nocompatible
filetype off 

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'desert-warm-256'
Plugin 'altercation/vim-colors-solarized'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

set modelines=0

set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2
set expandtab
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set copyindent    " copy the previous indentation on autoindenting
set relativenumber        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set encoding=utf-8
set scrolloff=3
set autoindent    " always set autoindenting on
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set noerrorbells         " don't beep

set nobackup
set noswapfile

syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" colorscheme desert-warm-256

autocmd bufwritepost .vimrc source $MYVIMRC

let mapleader=","
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set list
"set listchars=tab:▸\ .,trail:.,extends:#,nbsp:.,eol:¬
set listchars=tab:▸\ ,eol:¬

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap j gj
nnoremap k gk

" handling windows 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa

inoremap jj <Esc>

nnoremap <leader>n :NERDTreeToggle<cr>

