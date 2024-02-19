-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 23:37:40 CEST 2021
-- Description: Load Neovim plugins, sourced by 'init.lua'.
-- ======================================================================
-- Documentation of Plugin Manager: https://github.com/folke/lazy.nvim
require("lazy").setup({
   -- Code
   {
      'nvim-treesitter/nvim-treesitter',
      build = ":TSUpdate",
      config = function () 
         local configs = require("nvim-treesitter.configs")

         configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
         })
      end
   },
   'nvim-treesitter/playground',
   'neovim/nvim-lspconfig',
   'evanleck/vim-svelte',
   {
      "L3MON4D3/LuaSnip",
      version = "v2.2",
      run = "make install_jsregexp",
   },
   "hrsh7th/cmp-nvim-lsp",
   "hrsh7th/cmp-buffer",
   "hrsh7th/nvim-cmp",
   "saadparwaiz1/cmp_luasnip",

   -- Movement
   {
      'folke/flash.nvim',
   },
   'nvim-tree/nvim-tree.lua',
   'nvim-lua/plenary.nvim', -- Dependency on Telescope
   {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.5',
   },

   -- Obsidian Integration
   {
      'epwalsh/obsidian.nvim',
      version = "*",
      lazy = true,
      ft = "markdown",
      dependencies = {
         -- Required
         "nvim-lua/plenary.nvim",

         -- Optional
         "hrsh7th/nvim-cmp",
         "nvim-telescope/telescope.nvim",
         "nvim-treesitter/nvim-treesitter",
      },
   },

   -- Utility
   'folke/which-key.nvim',
   'lukas-reineke/indent-blankline.nvim',
   'nvim-lualine/lualine.nvim',
   'nvim-tree/nvim-web-devicons',
   'navarasu/onedark.nvim',
   'ggandor/leap.nvim',

	-- My local stuff
--	{
--		dir = "~/Documents/code/lua/helper.nvim",
--		name = "helper",
--		config = function()
--			require("helper").setup()
--		end
--	},
})
-- Other interesting addons:
-- https://github.com/goolord/alpha-nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/anuvyklack/hydra.nvim
-- https://github.com/akinsho/bufferline.nvim
-- 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'},
-- 'ThePrimeagen/harpoon',
-- 'junegunn/goyo.vim',

-- Linting
-- python = {'pylint',},
-- sh = {'shellcheck'},
-- bash = {'shellcheck'},
-- zsh = {'shellcheck'},
-- go = {'golangcilint'},
