" ~ /.gvimrc
" Niko Kivelä <niko tovrleaf com>

" Colorscheme
colorscheme darkblue

" Config
source ~/.vim-git/config/config.vim

" Cursor
set cursorline
highlight cursorline guibg=#000000
set guicursor=a:blinkon1000

" Gui
set guitablabel=%N.\ %t
set showtabline=2
set guioptions-=m     " No menubar present
set guioptions-=a     " No autoselect
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0
