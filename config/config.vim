" ~/.vim/config/config.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" PLUGINS
" ============================================================================
" https://github.com/junegunn/vim-plug
" :PlugInstall to install the plugins
" :PlugUpdate to install or update the plugins
" :PlugDiff to review the changes from the last update
" :PlugClean to remove plugins no longer in the list
call plug#begin('~/.vim/plugged')
Plug 'clojure-emacs/cider-nrepl'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'jupyter-vim/jupyter-vim'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mfukar/robotframework-vim'
Plug 'pangloss/vim-javascript'
Plug 'powerline/fonts'
Plug 'tomasr/molokai'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ============================================================================
" PLUGIN SETTINGS
" ============================================================================
" Molokai colorscheme
colorscheme molokai
let g:molokai_original = 1
" Enable 256-color mode for the molokai colorscheme
let g:rehash256 = 1
highlight Normal guibg=#222629 ctermbg=Black

" ============================================================================
" GENERAL SETTINGS
" ============================================================================
" Store lots of :cmdline history
set history=1000
" Allow to switch to another buffer without saving the current one
set hidden
" Shorten various messages to reduce clutter
set shortmess=atI
" Highlight strings inside C comments
let c_comment_strings=1

" Leaders
" Global custom mappings
let mapleader = ','
" Buffer-local mappings, typically by filetype plugins
let maplocalleader = '-'

" ============================================================================
" FILE HANDLING
" ============================================================================
filetype on
filetype indent on
filetype plugin indent on

set encoding=utf8
set fileencoding=utf8
set fileformat=unix

" Use swapfile for buffer. Useful for recovering after network outage
set swapfile
set nobackup
set nowritebackup

" ============================================================================
" UI SETTINGS
" ============================================================================
" Show linenumbers
set number
set ruler
" Highlight the entire active cursor line
set cursorline
" Display mode (INSERT/REPLACE/etc.)
set showmode
" Show incomplete cmds down the bottom
set showcmd
" Automatically show matching brackets
set showmatch
" Show matching parents after .2 seconds, no .5sec
set matchtime=2
" Set visualbell instead of beeping
set visualbell
" Use 256 colours
set t_Co=256
set guifont=Roboto_Mono_Medium_for_Powerline:h15

" ============================================================================
" EDITING BEHAVIOR
" ============================================================================
" Backspace over autoindent, line breaks and start of insert mode
set backspace=indent,eol,start
" Start in command mode
set noinsertmode

" Text wrapping and line length
set wrap
set textwidth=79
" Allow gq, autoinsert comment leader, recognize lists,
" don't break one-letter word
set formatoptions=qrn1

" Visual guides for line length
if exists('+colorcolumn')
  " Displays a vertical line at column 80
  set colorcolumn=80
endif

" Whitespace display
" Make invisible whitespace characters visible
set list
set listchars=tab:⏤⇢,trail:⇢,eol:$

" Autocompletion
" Enables enhanced command-line completion with a visual menu
set wildmenu
" Helps wildmenu auto-completion
set wildmode=longest,list:full
set complete=.,w,b,u

" ============================================================================
" SEARCH SETTINGS
" ============================================================================
" Highlight searches
set hlsearch
" Start searching right away
set incsearch
" Do not ignorecase when searching pattern
set noignorecase
" Wrap search around EOF
set wrapscan
" No underscore as word delimiter, helps locating variables
set iskeyword+=_

" ============================================================================
" FOLDING
" ============================================================================
" Fold based on indent
set foldmethod=indent
" Deepest fold is 10 levels
set foldnestmax=10
" Dont fold by default
set nofoldenable
" Folds at level 2 and deeper will be closed
set foldlevel=1

" ============================================================================
" MOVEMENT
" ============================================================================
set whichwrap+=h,l

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

augroup line_return
  au!
  " Make sure Vim returns to the same line when you reopen a file
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     execute 'normal! g`"zvzz' |
    \ endif
augroup END

" ============================================================================
" EXTERNAL CONFIG
" ============================================================================
source ~/.vim/config/mappings.vim
source ~/.vim/config/plugins.vim
source ~/.vim/config/editor.vim
source ~/.vim/config/aliases.vim

" ============================================================================
" SYNTAX (must be last)
" ============================================================================
syntax on
