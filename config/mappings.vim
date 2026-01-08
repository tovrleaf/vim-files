" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" ============================================================================
" BUFFER NAVIGATION
" ============================================================================
" Navigate buffers like vimperator
" Ctrl-n to switch to the next buffer
noremap <silent> <C-n> :bnext<CR>
" Ctrl-p to switch to the previous buffer
noremap <silent> <C-p> :bprev<CR>

" Tab navigation (alternative, currently disabled)
"noremap <silent> <C-n> :tabnext<CR>
"noremap <silent> <C-p> :tabprev<CR>

" ============================================================================
" WINDOW NAVIGATION
" ============================================================================
" CTRL-hjkl moves between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ============================================================================
" SPLIT CREATION (disabled)
" ============================================================================
" ,V splits the view vertically
nnoremap ,V :vsplit<enter>
" ,H splits view horizontally
nnoremap ,H :split<enter>

" ============================================================================
" BLOCK MOVEMENT
" ============================================================================
" Use cmd j/k to move rapidly between blocks
nnoremap <d-j> }
nnoremap <d-k> {
vnoremap <d-j> }
vnoremap <d-k> {

" ============================================================================
" SEARCH
" ============================================================================
" Highlight toggle, Leader c
nmap <Leader>c :silent :nohlsearch<CR>

" ============================================================================
" VISUAL HELPERS
" ============================================================================
" Toggle line numbers
nnoremap <F7> :set number!<CR>

" Select what was just pasted
nnoremap <Leader>p `[v`]

" ============================================================================
" TEXT EDITING
" ============================================================================
" Convenience function for creating ReST title markers
nnoremap <Leader>h yypVr

" Quick escape from insert mode
imap jj <Esc>

" ============================================================================
" ARROW KEYS (disabled)
" ============================================================================
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" ============================================================================
" CONFIGURATION
" ============================================================================
" Update by reading this file
nmap <Leader>U :source ~/.vimrc<CR>
