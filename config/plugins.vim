" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" LustyExplorer
nmap <silent> <leader>l :LustyFilesystemExplorer<CR>
nmap <silent> <leader>L :LustyFilesystemExplorerFromHere<CR>

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
