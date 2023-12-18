local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'bmatcuk/stylelint-lsp'
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'lukas-reineke/lsp-format.nvim'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'
  use {
    'jose-elias-alvarez/nvim-lsp-ts-utils',
    requires = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim'
    }
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'nvimdev/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-telescope/telescope-live-grep-args.nvim',
    }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {
    'numToStr/Comment.nvim',
    requires = { 'JoosepAlviste/nvim-ts-context-commentstring' }
  }
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'gpanders/editorconfig.nvim'
  use {
    'wuelnerdotexe/vim-astro',
    ft = 'astro',
    run = function()
      vim.g.astro_typescript = 'enable'
      vim.g.astro_stylus     = 'disable'
    end
  }
  use 'virchau13/tree-sitter-astro'
  use {
    'NeogitOrg/neogit',
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
      "ibhagwan/fzf-lua",
    }
  }
end)
