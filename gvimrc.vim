" ~ /.gvimrc
" Niko Kivelä <niko tovrleaf com>

" Colorscheme
colorscheme darkblue

" Config
source ~/.vim/config/config.vim

" Cursor
set cursorline
highlight cursorline guibg=#000000
set guicursor=a:blinkon1000

" Gui
set guitablabel=%N.\ %t
set showtabline=2
set guioptions-=T
set guioptions-=F
set guioptions-=m
set guioptions+=a
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0
