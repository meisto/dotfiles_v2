-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:43:02 CEST 2021
-- Description: Neovim button remaps, sourced by 'init.lua'.
-- ======================================================================

-- Use the "which-key" plugin as a helper
require("which-key").add({
    { "<S-tab>", "<cmd>bp<CR>", desc = "Previous Buffer", remap = false },
    { "<leader>", group = "file", remap = false },
    { "<leader>d", "<cmd>Telescope lsp_definitions<cr>", desc = "Find Definition.", remap = false },
    { "<leader>ee", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open error message in floating window.", remap = false },
    { "<leader>en", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Open error message in floating window.", remap = false },
    { "<leader>ep", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Open error message in floating window.", remap = false },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer.", remap = false },
    { "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find File.", remap = false },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep in files.", remap = false },
    { "<leader>g", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Open floating definition", remap = false },
    { "<leader>h", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Show signature help.", remap = false },
    { "<leader>p", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format file.", remap = false },
    { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Tree.", remap = false },
    { "<leader>w", group = "Insert snippet of code.", remap = false },
    { "<leader>wh", '<cmd>:execute ":0read!~/config/scripts/make_header.sh " . &filetype<CR>', desc = "Insert header", remap = false },
    { "<tab>", "<cmd>bn<CR>", desc = "Next Buffer", remap = false },
})

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

