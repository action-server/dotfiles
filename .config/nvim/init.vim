let mapleader =" "

" Install vim plugin manager "vim-plug" if not found.
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

syntax on
set nocompatible
filetype plugin on
set mouse=a
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set nowrap
set incsearch
set hlsearch
set nowrapscan
set ignorecase
set smartcase
set laststatus=2
set colorcolumn=120
set hidden
set undodir=~/.local/share/nvim/undo
set undofile

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'psliwka/vim-smoothie'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'neovim/nvim-lspconfig'
call plug#end()

set termguicolors
set background=dark
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
nnoremap <esc> :nohl <CR>
nnoremap <c-p> :FZF <CR>
nnoremap <Leader>s :set spell!<CR>
nnoremap <leader>u :UndotreeToggle<CR>
