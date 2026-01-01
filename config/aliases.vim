" ~/.vim/config/aliases.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" WHITESPACE COMMANDS
" ============================================================================
" Like retab but removes whitespace instead of replacing tabs
nmap remtab :%s/\s\+$

" ============================================================================
" DIRECTORY NAVIGATION
" ============================================================================
" Change directory to that of current file
noremap <leader>cdc :cd%:p:h<CR>
" Change local directory to that of current file
"nmap lcd :lcd%:p:h<CR>
nnoremap <leader>lcd :lcd%:p:h<CR>
