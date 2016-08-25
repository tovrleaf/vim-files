" ~/.vim/config/editor.vim
" Niko Kivelä <niko tovrleaf com>

" Tab management and indenting
set autoindent      " Auto ident what I've indented myself
set expandtab       " Insert spaces whenever tab key is pressed
set cindent         " Turn off c indenting
set laststatus=2    " Have status line always
set smartindent     " Do not auto indent when starting newline
set smarttab        " Let vim me do the indenting
set shiftwidth=4    " Set the number of spaces inserted for indentation
set softtabstop=0   " Number of columns vim uses when tab is pressed
set tabstop=4       " How many columns tab counts for
set textwidth=0     " Disable maximum width of text that can be inserted
set showtabline=1   " No page labelso

autocmd Filetype sh setlocal ts=2 sts=2 sw=2
