runtime ./vimrc.vim
set background=dark
set encoding=utf8
colorscheme zephyr
lua require("basic")
lua require("plugins")
lua require("plugin/nvim-tree")
lua require("keybindings")
lua require("lsp/setup")
lua require("plugin/nvim-treesitter")
lua require("plugin/gitsigns")
call plug#begin()
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
call plug#end()
lua require('lsp/nvim-cmp')

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:Lf_WindowPosition = 'popup'
let g:EasyMotion_do_mapping = 0

let g:Lf_HideHelp = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0, 'Rg': 1}

map <leader>jj <Plug>(easymotion-bd-f)
map <leader>jw <Plug>(easymotion-bd-w)
map <leader>h <C-w>h 
map <leader>j <C-w>j 
map <leader>k <C-w>k
map <leader>l <C-w>l
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>/ :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>
noremap <leader>ff :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
