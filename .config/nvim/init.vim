syntax on
set nocompatible
filetype plugin on
set mouse=a
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
" set scrolloff=8
" set expandtab
set smartindent
set nowrap
set incsearch
set hlsearch
set nowrapscan
set ignorecase
set smartcase
set laststatus=2
set colorcolumn=80
" set signcolumn=yes
set hidden
set undodir=~/.local/share/nvim/undo
set undofile

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" Plug 'tmsvg/pear-tree'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'psliwka/vim-smoothie'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim'
" Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
call plug#end()

set termguicolors
" highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

let mapleader = " "
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
" noremap! <up> <nop>
" noremap! <down> <nop>
" noremap! <left> <nop>
" noremap! <right> <nop>
noremap <esc> :nohl <CR>
map <c-p> :FZF <CR>
map <Leader>s :set spell!<CR>

lua << EOF
require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}
EOF
