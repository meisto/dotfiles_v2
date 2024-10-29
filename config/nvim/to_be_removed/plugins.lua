-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 23:37:40 CEST 2021
-- Description: Load Neovim plugins, sourced by 'init.lua'.
-- ======================================================================

-- Documentation of Plugin Manageer: https://github.com/junegunn/vim-plug

-- This section is in VimScript
vim.cmd [[
   call plug#begin(stdpath('data') . '/plugged')

   Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
   Plug 'neovim/nvim-lspconfig'
   " Plug 'mhinz/vim-startify'
   Plug 'junegunn/goyo.vim'

   call plug#end()
]]


