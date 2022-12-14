-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'simrat39/rust-tools.nvim' -- rusttttt 

  use {
    "williamboman/mason.nvim", -- mason lsp manager
    "williamboman/mason-lspconfig.nvim", -- integration
    "neovim/nvim-lspconfig", -- lsp 
  }
  use {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp           }
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp  use 
    'L3MON4D3/LuaSnip', -- Snippets plugin                       use 
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
     'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { "catppuccin/nvim", as = "catppuccin" } -- theme
  use {
    'nvim-lualine/lualine.nvim', -- status bar
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
