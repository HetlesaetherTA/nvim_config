vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'folke/tokyonight.nvim' -- Colorscheme
  use 'williamboman/mason.nvim' -- LSP, DAP, Linter, Formatter
  use "williamboman/mason-lspconfig.nvim" -- Mason language server
  use "neovim/nvim-lspconfig" -- Nvim language server
  use "tpope/vim-commentary" -- Comment out line with gcc & gc
  use "ThePrimeagen/vim-be-good" -- Primeagen vim game (:VimBeGood)
  use "ap/vim-css-color" -- See color when using rgb(r,g,b) in terminal
  use "rust-lang/rust.vim" -- Rust config
  use "lambdalisue/suda.vim" -- Force sudo
  use "vim-airline/vim-airline" -- Status bar
  use "preservim/tagbar" -- Tagbar for code navigation
  -- use "mhartington/formatter.nvim" -- Formatter
  use ('mbbill/undotree') -- Undotree
  use 'nvim-lua/plenary.nvim' -- Plenary
  use 'tpope/vim-fugitive' -- Fugitive
  use 'tpope/vim-surround' -- Replace code (cs"') "Hello" -> 'Hello'
  use 'ThePrimeagen/harpoon' -- Harpoon
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- use('nvim-treesitter/playground')
  -- use('fatih/vim-go') -- Go language support
  use {                    -- Fuzzy finder
        "nvim-telescope/telescope.nvim", tag = '0.1.0',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim' } }
      }
end)
