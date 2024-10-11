-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- LSP
  use('VonHeikemen/lsp-zero.nvim', {branch = 'v4.x'})
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- LSP Support
  use('neovim/nvim-lspconfig')
  -- Autocompletion
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/nvim-cmp')
end)

