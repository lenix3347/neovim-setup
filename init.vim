set syntax
set number
set relativenumber
set tabstop=4
nnoremap <silent> <esc> :noh<cr><esc>
noremap <F9> <ESC>:w !python<CR>
nnoremap <F12> :e $MYVIMRC<CR>
nnoremap <F1> :NERDTreeToggle<CR>
nmap oo o<Esc>k
nmap OO O<Esc>j
if has("win32")
	let &shell='bash.exe'
	let &shellcmdflag = '-c'
	let $TMP="/tmp"
	set noshelltemp
endif
let NERDTreeQuitOnOpen=1
set timeoutlen=150

call plug#begin("C:/Users/lenix/AppData/Local/nvim-data/plugged")
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'andweeb/presence.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'marko-cerovac/material.nvim'	
call plug#end()

let g:catppuccin_flavour = "mocha"
colo catppuccin

lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
require("catppuccin").setup()
EOF
