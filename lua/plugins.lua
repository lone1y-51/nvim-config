return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use {
      'kyazdani42/nvim-tree.lua',
  }
  -- theme
  use 'glepnir/zephyr-nvim'
  use 'lifepillar/vim-solarized8'
  -- lsp
  use {'neovim/nvim-lspconfig'}
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'
  -- easymotion
  use 'easymotion/vim-easymotion'
  -- comment
  use 'tpope/vim-commentary'
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', commit="6b5b37cc3ee2468beef1289980102fc3c4e06e2c" }
  -- leaderf search
  use { 'Yggdroot/LeaderF', run = ':LeaderfInstallCExtension' }
  -- git 
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  -- ariline git
  use 'tpope/vim-fugitive'
  -- floaterm
  use {'voldikss/vim-floaterm'}

end)
