" ~ /.gvimrc
" Niko Kivelä <niko tovrleaf com>

" Config
source ~/.vim-git/config/config.vim

" Cursor
set cursorline
highlight cursorline guibg=#000000
set guicursor=a:blinkon1000

"highlight Normal guibg=#000040
"highlight Normal guifg=#c0c0c0
set guifont=Menlo:h12
colorscheme molokai

" Gui
set guioptions-=m     " No menubar present
set guioptions-=a     " No autoselect
set guioptions-=T     " No include toolbar
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0
