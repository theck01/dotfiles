" Use all settings in vimrc
source ~/.vimrc

" set colorscheme to slate
colorscheme slate

" set width of new window
set lines=50 columns=90

"save when losing focus
au FocusLost * :wa

"set color column properly
highlight ColorColumn guibg=#2d2d2d
