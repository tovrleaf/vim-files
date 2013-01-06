" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" LustyExplorer
nmap <silent> ll :LustyFilesystemExplorer<CR>
nmap <silent> LL :LustyFilesystemExplorerFromHere<CR>

" LustyJuggler
let g:LustyJugglerShowKeys = 'a'
nmap <silent> ,, :LustyJuggler<CR>
nmap <silent> <TAB> :LustyJugglePrevious<CR>
