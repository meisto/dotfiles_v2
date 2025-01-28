-- ======================================================================
-- Author: meisto
-- Creation Date: Fri 08 Dec 2023 12:31:02 AM CET
-- Description: -
-- ======================================================================
local bootstrap = {}

function bootstrap.update_settings()
   -- Global Settings: 
   vim.g.laststatus = 2             -- Enable statusline
   vim.g.path = vim.o.path .. "**"  -- Configure path to include subdirs
   vim.g.hlsearch = true      -- Mark results of the last search
   vim.g.incsearch = true     -- Search incrementally while typing.
   vim.g.ignorecase = true    -- Ignore cases while searching.
   vim.g.smartcase = true     -- Improve case handling while searching.
   vim.g.hidden = true        -- Allow changed buffers to be hidden.
   vim.g.history = 1000       -- Length of history of used ex-mode commands.
   vim.opt.completeopt = {"menu", "menuone", "noselect"}
   vim.g.tex_flavor = "tex"
   vim.opt.number = true        -- Show absolute line numbers left of lines.
   vim.opt.relativenumber = true   -- Show relative line numbers left of lines.
   vim.opt.lbr = true           -- Break in spaces instead in words (display only)
   vim.opt.wrap = false         -- Do not wrap long lines
   vim.opt.colorcolumn = "100"  -- Show a mark at specified length.
   vim.opt.scrolloff = 5        -- Scroll when cursor is near the top or bottom.
   vim.opt.foldmethod = "indent"
   vim.opt.foldenable = false
   vim.opt.foldlevel = 99
   vim.opt.undofile = true

   vim.opt.expandtab = true      -- Insert spaces instead of tabs.
   vim.g.smarttab = true         -- Smarter tab handling.
   vim.opt.shiftwidth = 3        -- Set number of spaces for tabs.
   vim.opt.tabstop = 3           -- Set displayed size of tabs.
   vim.opt.autoindent = true     -- Copy indent of line when starting the next one
   vim.opt.smartindent = false   -- Better indent in C-like languages (see :help)
   vim.opt.breakindent = true

   vim.opt.conceallevel = 2

   vim.cmd("set title")
   vim.cmd("set termguicolors")
   vim.g.mapleader = " "   -- Set mapleader
end

function bootstrap.initialize_package_manager()
   local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
   if not vim.loop.fs_stat(lazypath) then
      vim.fn.system({
         "git",
         "clone",
         "--filter=blob:none",
         "https://github.com/folke/lazy.nvim.git",
         "--branch=stable",
         lazypath,
      })
   end

   vim.opt.rtp:prepend(lazypath)
end

return bootstrap
