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
nmap <silent> <leader>L :Files<CR>
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

" Custom status line format
let g:airline_section_z = '%p%%%l/%L,%c'

" ============================================================================
" VIM-MARKDOWN - https://github.com/preservim/vim-markdown
" ============================================================================

let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2

" ============================================================================
" NEO-TREE.NVIM - https://github.com/nvim-neo-tree/neo-tree.nvim
" ============================================================================
" Configure neo-tree width
lua << EOF
require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    width = 30,
  }
})
EOF
nnoremap / :Neotree filesystem reveal left toggle show<CR>

" ============================================================================
" GENERAL PLUGIN SETTINGS
" ============================================================================
" Disable text concealing
set conceallevel=0
