" ~/.vim/config/config.vim
" Niko Kivelä <niko tovrleaf com>

execute pathogen#infect()

" Backspace over autoindent, line breaks and start of insert mode
set backspace=indent,eol,start

filetype on
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
let maplocalleader = '-'

"GUI
set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h15
set number          " Show linenumbers
set ruler
set rulerformat=%l/%L(%p%%),%c
set t_Co=256        " Use 256 colours
set hidden          " When opening new file,
                    " unsaved changed makes current window hidden, not closed
set shortmess=atI

" Colorscheme
colorscheme molokai
let g:molokai_original = 1
highlight Normal guibg=#222629 ctermbg=Black
let g:rehash256 = 1
set cursorline

" Foldingl settings
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " this is just what i use

" Temp files
set swapfile        " Use swapfile for buffer. Useful for recovering file after network outage.
set nobackup
set nowritebackup

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
set listchars=tab:⏤⇢,trail:⇢,eol:$
set list
set complete=.,w,b,u
autocmd BufWritePre * :%s/\s\+$/$/e

" Searhing and hilighlights
set hlsearch        " Highlight searches
set incsearch       " Start searching right away
set noignorecase    " Do not ignorecase when searching pattern
set iskeyword+=_    " No underscore as word delimiter, helps locating variables
set wrapscan        " Wrap search around EOF
"
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
source ~/.vim/config/mappings.vim
" Statusline manipulation
"source ~/.vim/config/statusline.vim
" Plugins config
source ~/.vim/config/plugins.vim
" Editor config
source ~/.vim/config/editor.vim
" Aliases
source ~/.vim/config/aliases.vim

syntax on

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
