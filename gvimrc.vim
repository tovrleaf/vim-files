" ~ /.gvimrc
" Niko Kivelä <niko tovrleaf com>

" Config
source ~/.vim/config/config.vim

" Cursor
set cursorline
highlight cursorline guibg=#000000
set guicursor=a:blinkon1000

" Gui
set guioptions-=m     " No menubar present
set guioptions-=a     " No autoselect
set guioptions-=T     " No include toolbar
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0
