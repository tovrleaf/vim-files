" ~/.vim/config/mappings.vim
" Niko Kivelä <niko tovrleaf com>

" Navigation
" Navigate buffers like vimperator
noremap <silent> <C-n> :bnext<CR>
noremap <silent> <C-p> :bprev<CR>
" show buffer with ,,
noremap <silent> ,, :buffers<CR>
"noremap <silent> <C-n> :tabnext<CR>
"noremap <silent> <C-p> :tabprev<CR>

" Toggle line numbers
nnoremap <F7> :set number!<CR>

" Convenience function for creating ReST title markers
nnoremap <Leader>h yypVr

" select what was just pasted
nnoremap ,p `[v`]

" Disable arrow keys completely
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" ,V splits the view vertically
nnoremap ,V :vsplit<enter>
" ,H splits view horizontally
nnoremap ,H :split<enter>

" Use cmd j/k to move rapidly between blocks
nnoremap <d-j> }
nnoremap <d-k> {
vnoremap <d-j> }
vnoremap <d-k> {

" CTRL-hjkl moves between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
