vim.cmd [[packadd packer.nvim]]

-------------IMPORTANT----------------------
-- After adding a plugin always remember to
-- source so % and then run PackerInstall
-- -----------------------------------------

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Tpop Commentary
    -- Comment stuff out. Use gcc to comment out a line (takes a count),
    -- gc to comment out the target of a motion (for example, gcap to comment out a paragraph),
    -- gc in visual mode to comment out the selection, and gc in operator
    -- pending mode to target a comment. You can also use it as a command, 
    -- either with a range like :7,17Commentary, or as part of a :global
    -- invocation like with :g/TODO/Commentary. That's it.
  use 'tpope/vim-commentary'
  -- Git Vim Fugitive 
  use 'tpope/vim-fugitive'
  -- Vsnip Snipets
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  -- AutoPairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- Theme
  use 'arcticicestudio/nord-vim'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Syntax Highlights
  -- use 'nvim-treesitter/nvim-treesitter'
  -- stop working commented out, doesnt look like we need it though
  -- leaving in case we want to find new way to add syntax
  -- use 'nvim-treesitter/nvim-treesitter'
end)
