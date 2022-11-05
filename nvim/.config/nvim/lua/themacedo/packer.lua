vim.cmd [[packadd packer.nvim]]

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
  -- Git Fugitive 
  use 'tpope/vim-fugitive'
  -- Theme
  use 'arcticicestudio/nord-vim'
  --  Comment out shaunsingh/nord for now using 
  --  nord-vim above, made text italic
  -- use 'shaunsingh/nord.nvim'
  -- Syntax Highlights
  use 'nvim-treesitter/nvim-treesitter'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


end)
