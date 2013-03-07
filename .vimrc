
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

"let unsaved buffers persist in background
set hidden

"start scroll early, to maintain context
set scrolloff=3

"syntax highlighting
syntax on
filetype on
filetype plugin on
filetype indent on

"incremental search
set incsearch

"disable sounds and all visual warnings 
set noerrorbells visualbell t_vb=

"improve backspace
set backspace=indent,eol,start

"catch trailing whitespaces
set listchars=tab:>-,trail:^,eol:$
nmap <silent> <leader>s :set nolist!<CR>

"always have info bar
set ruler

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

"save when losing focus
au FocusLost * :wa
