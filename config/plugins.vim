" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
" CtrlP in find file mode
nmap <silent> <leader>l :CtrlP<CR>
" Files, Buffers and MRU files at the same time
nmap <silent> <leader>L :CtrlPMixed<CR>

" LustyJuggler
let g:LustyJugglerShowKeys = 'a'
nmap <silent> ,, :LustyJuggler<CR>
nmap <silent> <TAB> :LustyJugglePrevious<CR>

" Better Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons
nmap <silent> <leader>r :RainbowParenthesesToggleAll<CR>

" Airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
