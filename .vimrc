" vundle config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'

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
map <Bslash> :NERDTreeToggle<return>
nnoremap <leader>f :CtrlP<return>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
set wildignore+=*/node_modules/*,*/bower_components/*

"let unsaved buffers persist in background
set hidden

"start scroll early, to maintain context
set scrolloff=3

"syntax highlighting
syntax on
filetype plugin indent on

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

"Makefiles do not expand tabs
:autocmd FileType make set noexpandtab

"Show line numbers relative to the current line
set relativenumber

"Make j and k work to travel up and down screen lines, not filelines
nnoremap j gj
nnoremap k gk

" disable automatic line breaks and long lines
set nowrap
set textwidth=0
set wrapmargin=0

" Arrow keys mapped for buffer switching
nnoremap <left> :bprev<cr>
nnoremap <right> :bnext<cr>
nnoremap <down> :buffer #<cr>
nnoremap <up> :buffers<cr>:buffer <space>

" highlight background after 80 columns
execute "set colorcolumn=" . join(range(80,334), ',')
highlight ColorColumn ctermbg=darkgray
