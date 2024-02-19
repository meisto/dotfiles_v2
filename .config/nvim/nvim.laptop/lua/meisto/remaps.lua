-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:43:02 CEST 2021
-- Description: Neovim button remaps, sourced by 'init.lua'.
-- ======================================================================
local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "   -- Set mapleader

-- Arguments: mode, key sequence, effect, options
options = { noremap = true }
map('n', '<Leader>b', ':buffer ', options)
map('n', '<Tab>', ':bn<CR>', options)
map('n', '<Leader>wh', 
   ':0read!~/snippets/general/make_header.sh \'\\#\'',
   options)
-- TODO: Write file-dependant version that picks correct comment format


print "Succesfully sourced 'remaps.lua'."

