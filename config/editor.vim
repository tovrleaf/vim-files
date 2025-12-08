" ~/.vim/config/editor.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" INDENTING
" ============================================================================
" Auto indent what I've indented myself
set autoindent
" Turn off c indenting
set cindent
" Do not auto indent when starting newline
set smartindent
" Let vim do the indenting
set smarttab

" ============================================================================
" TABBING
" ============================================================================
" Insert spaces whenever tab key is pressed
set expandtab
" Set the number of spaces inserted for indentation
set shiftwidth=2
" Number of columns vim uses when tab is pressed
set softtabstop=0
" How many columns tab counts for
set tabstop=2

" ============================================================================
" VISUAL
" ============================================================================
" Have status line always
set laststatus=2
" Disable maximum width of text that can be inserted
set textwidth=0
" Show tab bar only when there are at least 2 tabs
set showtabline=1

" ============================================================================
" FILETYPE SETTINGS
" ============================================================================
augroup filetype_settings
  au!
  autocmd Filetype py setlocal ts=4 sts=4 sw=4
augroup END
