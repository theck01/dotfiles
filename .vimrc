set nocompatible

" vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.Vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tyru/restart.vim' " Enables :Restart command
Plugin 'flazz/vim-colorschemes'
Plugin 'elixir-editors/vim-elixir'

call vundle#end()
filetype plugin on

"map leader key to ','
let mapleader = ","

"configure CtrlP
nnoremap <leader>f :CtrlP<CR>
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
set wildignore+=*/node_modules/*
set wildignore+=*.o
set wildignore+=*/build/*
set wildignore+=*/*.pdx/*

"configure nerdtree
map <Bslash> :NERDTreeToggle<CR>
map <leader>g :NERDTreeFind<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize=45
let g:NERDTreeIgnore=['node_modules$[[dir]]','\~$']

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
set shiftwidth=2
set expandtab
set smartindent
" persist buffers in the background
set hidden

"start scroll early, to maintain context
set scrolloff=3

"syntax highlighting
syntax on

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
nnoremap <leader><BS> :noh<CR>
nnoremap <leader>r :Restart<CR>

" force vim to recognize gnome terminal as a 256 color terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"get better syntax highlighting
set background=dark

"set better color theme
colorscheme distinguished

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
execute "set colorcolumn=" . join(range(81,334), ',')
highlight ColorColumn ctermbg=darkgray

" yank and paste to the system clipboard
set clipboard=unnamed

" Autosave on focus lost
:au FocusLost * :wa

" Syntax highlighting for elixir support files
au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
