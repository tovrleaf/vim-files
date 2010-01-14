" ~/.vim/config/config.vim
" Niko Kivelä <niko tovrleaf com>

" Basic settings
syntax on
filetype on
filetype indent off
filetype plugin indent off

" General settings
set nocompatible    " Don't make vim behave like vi
set noinsertmode    " Start in command mode
set showmode        " Display mode (INSERT/REPLACE/etc.)
set matchtime=2     " Show matching parents after .2 seconds, no .5sec noinsertmode
set nonumber        " Do not show linenumbers
set ruler
set rulerformat=%l/%L(%p%%),%c

" Colorscheme
if filereadable(expand("$HOME/.vim/colors/textmate16.vim")) " check if customcolorscheme exists, load it
  colorscheme textmate16                                    " http://www.vim.org/scripts/script.php?script_id=1855
  if has('gui')
    highlight Normal guibg=#000040
    highlight Normal guifg=#c0c0c0
  endif
else
  colorscheme darkblue
endif

" Tab management and indenting
set autoindent      " Auto ident what I've indented myself
set nocindent       " Turn off c indenting
set expandtab       " Insert spaces whenever tab key is pressed
set laststatus=2    " Have status line always
set nosmartindent   " Do not auto indent when starting newline
set nosmarttab      " Let me do the indenting
set shiftwidth=2    " Set the number of spaces inserted for indentation
set softtabstop=2   " Number of columns vim uses when tab is pressed
set tabstop=2       " How many columns tab counts for
set textwidth=0     " Disable maximum width of text that can be inserted
set showtabline=0   " No page labels

" Temp files
set nobackup
set nowritebackup
set swapfile        " Use swapfile for buffer. Useful for recovering file after network outage.

" Encodings and format
set encoding=utf8
set fileencoding=utf8
set fileformat=unix

" Autocompletion behaviour
set wildmenu                    " Enchanced ed commands completion
set wildmode=longest,list:full  " Helps wildmenu auto-completion

" Unprintable characters and whitespaces
set list listchars=tab:>-,trail:.
set list
set complete=.,w,b,u

" Shell settings
if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif

" Searhing and hilighlights
set hlsearch        " Highlight searches
set incsearch       " Start searching right away
set noignorecase    " Do not ignorecase when searching pattern
set iskeyword+=_    " No underscore as word delimiter, helps locating variables
set wrapscan        " Wrap search around EOF

" Misc
let c_comment_strings=1 " Highlight strings inside C comments

" Mappings
source ~/.vim/config/mappings.vim
