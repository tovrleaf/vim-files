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
nmap <silent> <leader>r :RainbowParenthesesToggleAll<CR>
