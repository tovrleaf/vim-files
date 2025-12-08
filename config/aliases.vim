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
nmap cdc :cd%:p:h<CR>
" Change local directory to that of current file
nmap lcd :lcd%:p:h<CR>

" ============================================================================
" FORMATTING FUNCTIONS
" ============================================================================
" Format JSON using Ruby
function! JsonFormat()
  let l:cmd = ':%! ruby -rjson -e '
  let l:cmd .= '"print JSON.pretty_generate(JSON.parse(ARGF.read))"'
  execute(l:cmd)
endfunction

if !exists(":JsonFormat")
  command JsonFormat call JsonFormat()
endif
