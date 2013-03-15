
"prevent backups
set noswapfile
set nobackup
set nowritebackup

"history size
set history=1024

"show matching brackets
set showmatch

"tab settings
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

"map leader key to ','
let mapleader = ","

"let unsaved buffers persist in background
set hidden

"start scroll early, to maintain context
set scrolloff=3

"syntax highlighting
syntax on
filetype on
filetype plugin on
filetype indent on

"disable sounds and all visual warnings 
set noerrorbells visualbell t_vb=

"improve backspace
set backspace=indent,eol,start

"show vim info
set showmode
set showcmd
set ruler

"improve search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<return>

"get better syntax highlighting
set background=dark

"set better color theme
color peachpuff

"Add 80+ line color indicator
"highlight OverLength ctermbg=gray
"match OverLength /\%81v.\+/

"Makefiles do not expand tabs
:autocmd FileType make set noexpandtab

"Show line numbers relative to the current line
set relativenumber

"Make j and k work to travel up and down screen lines, not filelines
nnoremap j gj
nnoremap k gk

"enable pathogen
execute pathogen#infect()

"add CTRLp to runtimepath
set runtimepath^=~/.vim/bundle/ctrlp.vim/doc
map <S-A-n> :CtrlP<return>

"add NERDTree binding
map <Bslash> :NERDTreeToggle<return>
