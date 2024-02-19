-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 18:10:20 CEST 2021
-- Description: Neovim settings, sourced by init.lua
-- ======================================================================

local go = vim.o	-- Global options
local wo = vim.wo	-- Window options
local bo = vim.bo	-- Buffer options

-- Global Settings: 
go.laststatus = 2
go.path = go.path .. "**"
go.hlsearch = true      -- Mark results of the last search
go.incsearch = true     -- Search incrementally while typing.
go.ignorecase = true    -- Ignore cases while searching.
go.smartcase = true     -- Improve case handling while searching.
go.smarttab = true      -- Smarter tab handling.
go.hidden = true        -- Allow changed buffers to be hidden.
go.history = 1000       -- Length of history of used ex-mode commands.

-- Window Options:
wo.number = true        -- Show absolute line numbers left of lines.
-- wo.relativenumber    -- Show relative line numbers left of lines.
wo.lbr = true           -- Break in spaces instead in words (display only)
wo.wrap = false         -- Do not wrap long lines
wo.colorcolumn = "80"   -- Show a mark at specified length.
wo.scrolloff = 5        -- Scroll when cursor is near the top or bottom.

-- Buffer Options:
bo.expandtab = true     -- Insert spaces instead of tabs.
bo.shiftwidth = 3       -- Set number of spaces for tabs.
bo.tabstop = 8          -- Set displayed size of tabs.
bo.autoindent = true    -- Copy indent of line when starting the next one
bo.smartindent = true   -- Better indent in C-like languages (see :help)

-- Others
   -- Nice options: default, desert, onedark (needs to be installed)
vim.cmd("colorscheme wipcolors")        


print "Succesfully sourced 'settings.lua'."
