" ~/.vim/config/config.vim
" Niko Kivelä <niko tovrleaf com>

" Backspace over autoindent, line breaks and start of insert mode
set backspace=indent,eol,start

syntax on
filetype on
"filetype indent off
"filetype plugin indent off
filetype indent on
filetype plugin indent on

" General settings
set nocompatible    " Don't make vim behave like vi
set noinsertmode    " Start in command mode
set showmode        " Display mode (INSERT/REPLACE/etc.)
set showcmd         " Show incomplete cmds down the bottom
set showmatch       " Automatically show matching brackets
set matchtime=2     " Show matching parents after .2 seconds, no .5sec noinsertmode
let mapleader = ','


"GUI
set guifont=Menlo:h12
set number          " Show linenumbers
set ruler
set hidden
set shortmess=atI
set rulerformat=%l/%L(%p%%),%c

" Colorscheme
" check if customcolorscheme exists, load it
if filereadable(expand("$HOME/.vim/colors/molokai.vim"))
  "colorscheme textmate16 " http://www.vim.org/scripts/script.php?script_id=1855
  colorscheme molokai
else
  "colorscheme darkblue
endif

" Status line
set statusline+=%h  " Help file flag
set statusline+=%y  " Filetype
set statusline+=%r  " Read only flag
set statusline+=%m  " Modified flag
set statusline=%f   " Tail of the filename

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

" Foldingl settings
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " this is just what i use

" Foldingl settings
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " this is just what i use

" Temp files
set swapfile        " Use swapfile for buffer. Useful for recovering file after network outage.
set nobackup
set nowritebackup
" Auto-backup files and .swp files don't go to pwd
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Encodings and format
set encoding=utf8
set fileencoding=utf8
set fileformat=unix

" Text wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
if exists('+colorcolumn')
    set colorcolumn=80
endif

" Hilight anything over 120 characters
"match Todo '\%120v.*'

" Autocompletion behaviour
set wildmenu                    " Enchanced ed commands completion
set wildmode=longest,list:full  " Helps wildmenu auto-completion

" Unprintable characters and whitespaces
set listchars=tab:⏤⇢,trail:⇢
set list
set complete=.,w,b,u
autocmd BufWritePre * :%s/\s\+$//e

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
" Highlight toggle
nmap <Leader>c :silent :nohlsearch<CR>

" Moving
set whichwrap+=<,>,h,l
set wrapmargin=75

" Make scrolling faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Misc
set history=1000        " Store lots of :cmdline history
let c_comment_strings=1 " Highlight strings inside C comments
set visualbell          " Set visualbell instead of beeping

" Mappings
source ~/.vim-git/config/mappings.vim
" Statusline manipulation
source ~/.vim-git/config/statusline.vim
" Plugins config
source ~/.vim-git/config/plugins.vim
