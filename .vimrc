"https://dougblack.io/words/a-good-vimrc.html
execute pathogen#infect()

"colors
syntax enable
set background=dark
colorscheme solarized

"tabs spaces
set tabstop=2
set softtabstop=2
set expandtab

"ui
set number 
set cursorline  
set wildmenu 
set lazyredraw 
set showmatch

"search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"folding
"set foldenable 
"set foldlevelstart=10
"set foldnestmax=10

"ctrlp 
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
