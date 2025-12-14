" ~/.vim/config/plugins.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" FZF - https://github.com/junegunn/fzf.vim
" ============================================================================
" FZF window settings
let g:fzf_layout = { 'down': '~40%' }

" Files
nmap <silent> <leader>l :GFiles<CR>
" History (MRU files)
nmap <silent> <leader>L :History<CR>
" Buffer list
nmap <silent> ,, :Buffers<CR>

" ============================================================================
" RAINBOW - https://github.com/luochen1990/rainbow
" ============================================================================
let g:rainbow_active = 1

" Toggle rainbow parentheses
nmap <silent> <leader>r :RainbowToggle<CR>

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
