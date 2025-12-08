" ~/.vim/config/editor.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" EDITING MODE
" ============================================================================
" Start in command mode
set noinsertmode
" Backspace over autoindent, line breaks and start of insert mode
set backspace=indent,eol,start

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
" TEXT WRAPPING AND FORMATTING
" ============================================================================
set wrap
set textwidth=79
" Allow gq, autoinsert comment leader, recognize lists,
" don't break one-letter word
set formatoptions=qrn1

" ============================================================================
" VISUAL GUIDES
" ============================================================================
" Have status line always
set laststatus=2
" Show tab bar only when there are at least 2 tabs
set showtabline=1

" Displays a vertical line at column 80
if exists('+colorcolumn')
  set colorcolumn=80
endif

" ============================================================================
" WHITESPACE DISPLAY
" ============================================================================
" Make invisible whitespace characters visible
set list
set listchars=tab:⏤⇢,trail:⇢,eol:$

" ============================================================================
" AUTOCOMMANDS
" ============================================================================
augroup whitespace
  au!
  " Automatically remove trailing whitespace from all lines when save
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

augroup line_length_warning
  au!
  " Highlight anything over 120 characters
  autocmd BufWinEnter * call matchadd('Todo', '\%>120v.*')
augroup END

augroup filetype_settings
  au!
  autocmd Filetype py setlocal ts=4 sts=4 sw=4
augroup END
