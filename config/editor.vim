" ~/.vim/config/editor.vim
" Niko Kivelä <niko tovrleaf com>

" Indenting
set autoindent      " Auto ident what I've indented myself
set cindent         " Turn off c indenting
set smartindent     " Do not auto indent when starting newline
set smarttab        " Let vim me do the indenting

" Tabbing
set expandtab       " Insert spaces whenever tab key is pressed
set shiftwidth=4    " Set the number of spaces inserted for indentation
set softtabstop=0   " Number of columns vim uses when tab is pressed
set tabstop=4       " How many columns tab counts for

" Visual
set laststatus=2    " Have status line always
set textwidth=0     " Disable maximum width of text that can be inserted
set showtabline=1   " No page labelso

" Filetype settings
autocmd Filetype sh setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype py setlocal ts=4 sts=4 sw=4
