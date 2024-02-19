-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:43:02 CEST 2021
-- Description: Neovim button remaps, sourced by 'init.lua'.
-- ======================================================================
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "   -- Set mapleader

-- Use the "which-key" plugin as a helper
require("which-key").register({
   ["<leader>"] = {
      name = "+file",
      d = {"<cmd>Telescope lsp_definitions<cr>", "Find Definition."},
      e = {
         e = {"<cmd>lua vim.diagnostic.open_float()<cr>", "Open error message in floating window."},
         n = {"<cmd>lua vim.diagnostic.goto_next()<cr>", "Open error message in floating window."},
         p = {"<cmd>lua vim.diagnostic.goto_prev()<cr>", "Open error message in floating window."}
      },
      f = {"<cmd>Telescope find_files<cr>", "Find File."},
      g = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Open floating definition"},
      h = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Show signature help."},
      b = {"<cmd>Telescope buffers<cr>", "Find Buffer."},
      t = {
         t = {"<cmd>NvimTreeToggle<cr>", "Toggle File Tree."},
      },
      p = {"<cmd>lua vim.lsp.buf.format()<cr>", "Format file."},
      w = {
         name = "Insert snippet of code.",
         h = {"<cmd>:execute \":0read!~/config/scripts/make_header.sh \" . &filetype<CR>", "Insert header"}
      },
   },
}, {mode = "n", noremap = true})

require("which-key").register({
   
}, {mode = "i", noremap = true})

-- LuasSnip
local luasnip = require("luasnip")
vim.keymap.set({"i"}, "<C-O>", function() luasnip.expand() end, {})
vim.keymap.set({"i", "s"}, "<C-u>", function() luasnip.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-A-u>", function() luasnip.jump(-1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-E>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(1)
	end
end, {silent = true})

-- Leap
vim.keymap.set('n', 's', '<Plug>(leap-forward-to)', {desc="Leap forward."})
vim.keymap.set('n', 'S', '<Plug>(leap-backward-to)', {desc="Leap backward."})
vim.keymap.set('v', 's', '<Plug>(leap-forward-to)', {desc="Leap forward."})
vim.keymap.set('v', 'S', '<Plug>(leap-backward-to)', {desc="Leap backward."})


vim.keymap.set('n', '<tab>', "<cmd>bn<CR>", {desc="Next Buffer"})
vim.keymap.set('n', '<S-tab>', "<cmd>bp<CR>", {desc="Previous Buffer"})

print "Succesfully sourced 'remaps.lua'."

