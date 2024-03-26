vim.cmd [[packadd packer.nvim]]

-------------IMPORTANT----------------------
-- After adding a plugin always remember to
-- source so % and then run PackerInstall
-- -----------------------------------------

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Theme
  use 'arcticicestudio/nord-vim'
  
  -- Fuzzy Finder Telescope
  -- source: https://github.com/nvim-telescope/telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Git Vim Fugitive 
  use 'tpope/vim-fugitive'

  -- Tpop Commentary
    -- Comment stuff out. Use gcc to comment out a line (takes a count),
    -- gc to comment out the target of a motion (for example, gcap to comment out a paragraph),
    -- gc in visual mode to comment out the selection, and gc in operator
    -- pending mode to target a comment. You can also use it as a command, 
    -- either with a range like :7,17Commentary, or as part of a :global
    -- invocation like with :g/TODO/Commentary. That's it.
  use 'tpope/vim-commentary'

  -- Undo Tree
  use('mbbill/undotree')

  -- NvimTree File Explorer
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = function() require'nvim-tree'.setup {} end
  }

  -- Syntax highlight better colors
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Shows tree :TSPlaygroundToggle this is the AST - you have access to it to create plugins or whatever
  use('nvim-treesitter/playground')

  -- File navigation
  use('theprimeagen/harpoon')

  -- LSP 
  -- use 'neovim/nvim-lspconfig'
  -- use 'williamboman//nvim-lsp-installer'

  -- -- Autocompletion
  -- use 'hrsh7th/nvim-cmp' --Completions Plugin
  -- use 'hrsh7th/cmp-buffer' --Buffer completions
  -- use 'hrsh7th/cmp-path' -- path completions
  -- use 'hrsh7th/cmp-cmdline' -- command line completions
  -- use 'hrsh7th/cmp-nvim-lsp'

  -- -- snippets
  -- use "L3MON4D3/LuaSnip" --snippet engine
  -- use "saadparwaiz1/cmp_luasnip" -- snippet completions
  -- use "rafamadriz/friendly-snippets"

  -- AutoPairs
  -- use {
	-- "windwp/nvim-autopairs",
  --   config = function() require("nvim-autopairs").setup {} end
  -- }

  

    -- use {
	  -- 'VonHeikemen/lsp-zero.nvim',
	  -- requires = {
		--   -- LSP Support
		--   {'neovim/nvim-lspconfig'},
		--   {'williamboman/mason.nvim'},
		--   {'williamboman/mason-lspconfig.nvim'},

		--   -- Autocompletion
		--   {'hrsh7th/nvim-cmp'},
		--   {'hrsh7th/cmp-buffer'},
		--   {'hrsh7th/cmp-path'},
		--   {'saadparwaiz1/cmp_luasnip'},
		--   {'hrsh7th/cmp-nvim-lsp'},
		--   {'hrsh7th/cmp-nvim-lua'},

		--   -- Snippets
		--   {'L3MON4D3/LuaSnip'},
		--   {'rafamadriz/friendly-snippets'},
	  -- }
  -- }

  -- use("folke/zen-mode.nvim")
  -- use("github/copilot.vim")

  
end)
