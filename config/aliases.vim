" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" like retab but removes whitespace isntead of replacing tabs
nmap remtab :%s/\s\+$

" change directory to that of current file
nmap cdc :cd%:p:h<CR>
" change local directory to that of current file
nmap lcd :lcd%:p:h<CR>
