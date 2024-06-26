-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Dracula Colors
  use ({
    'Mofiqul/dracula.nvim',
    as = 'dracula',
    config = function()
      vim.cmd('colorscheme dracula')
    end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('tpope/vim-fugitive')
  use ('tpope/vim-surround')
  use ('tpope/vim-commentary')
end)
