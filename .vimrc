syntax on
set nocompatible
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set noswapfile
set nobackup
set incsearch
set ignorecase
set laststatus=2
set undofile
set colorcolumn=80
set undodir=~/.vim/undo

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tmsvg/pear-tree'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'psliwka/vim-smoothie'
call plug#end()

set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap! <up> <nop>
noremap! <down> <nop>
noremap! <left> <nop>
noremap! <right> <nop>
