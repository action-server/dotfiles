vim.g.mapleader = ' '

vim.opt.syntax = 'on'
vim.opt.compatible = false
vim.opt.mouse = a

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.wrapscan = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.laststatus = 2
vim.opt.colorcolumn = {80}
vim.opt.hidden = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/nvim/undo'
vim.opt.undofile = true

function install_lazynvim(lazynvim_path)
	if vim.loop.fs_stat(lazynvim_path) then
		return
	end

  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    lazynvim_path,
  })
end

local lazynvim_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

install_lazynvim(lazynvim_path)

vim.opt.rtp:prepend(lazynvim_path)

plugins = {
	'tpope/vim-commentary',
	'tpope/vim-surround',
	'tpope/vim-repeat',
	{
		'ellisonleao/gruvbox.nvim', 
	},
	'mbbill/undotree',
	{
		'nvim-telescope/telescope.nvim',
		 dependencies = {
			 'nvim-lua/plenary.nvim',
		 }
	},
	'psliwka/vim-smoothie',
	'itchyny/lightline.vim',
}

require('lazy').setup(plugins)

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

vim.keymap.set('n', '<esc>', ':nohl <CR>', {noremap = true})
vim.keymap.set('n', '<c-p>', ':Telescope find_files <CR>', {noremap = true})
vim.keymap.set('n', '<Leader>s', ':set spell! <CR>', {noremap = true})
vim.keymap.set('n', '<Leader>u', ':UndotreeToggle <CR>', {noremap = true})
