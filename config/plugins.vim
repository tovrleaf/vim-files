" ~/.vim/config/plugins.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" CTRLP - https://github.com/kien/ctrlp.vim
" ============================================================================
" Set working path mode to repository root or current directory
let g:ctrlp_working_path_mode = 'ra'

" CtrlP in find file mode
nmap <silent> <leader>l :CtrlP<CR>
" Files, Buffers and MRU files at the same time
nmap <silent> <leader>L :CtrlPMixed<CR>
" Buffer list
nmap <silent> ,, :CtrlPBuffer<CR>

" ============================================================================
" RAINBOW PARENTHESES - https://github.com/kien/rainbow_parentheses.vim
" ============================================================================
augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesToggle
  au VimEnter * RainbowParenthesesLoadRound
  au VimEnter * RainbowParenthesesLoadSquare
  au VimEnter * RainbowParenthesesLoadBraces
  au VimEnter * RainbowParenthesesLoadChevrons
augroup END

" Toggle rainbow parentheses
nmap <silent> <leader>r :RainbowParenthesesToggleAll<CR>

" ============================================================================
" AIRLINE - https://github.com/vim-airline/vim-airline
" ============================================================================
" Theme and font settings
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

" Initialize symbols dictionary
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Powerline symbols (preferred)
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Custom status line format
let g:airline_section_z = '%p%%%l/%L,%c'

" ============================================================================
" GENERAL PLUGIN SETTINGS
" ============================================================================
" Disable text concealing
set conceallevel=0
