-- author: meisto
-- date: 2024-01-23 21:16:25

local util = require("util")


vim.api.nvim_create_autocmd('FileType', {
   pattern = {"svelte", "hmtl"},
   callback = function()
      util.write_header{comment_symbol="<!--", comment_symbol_end="-->"}
   end,
})
vim.api.nvim_create_autocmd('FileType', {
   pattern = {"python", "sh"},
   callback = function()
      util.write_header{comment_symbol="#"}
   end,
})
vim.api.nvim_create_autocmd('FileType', {
   pattern = {"go", "typescript", "javascript"},
   callback = function()
      util.write_header{comment_symbol="//"}
   end,
})
vim.api.nvim_create_autocmd('FileType', {
   pattern = {"lua"},
   callback = function()
      util.write_header{comment_symbol="--"}
   end,
})
vim.api.nvim_create_autocmd('FileType', {
   pattern = {"make"},
   callback = function()
      util.write_header{comment_symbol="#"}
   end,
})
vim.api.nvim_create_autocmd('FileType', {
   pattern = {"typescriptreact", "javascriptreact"},
   callback = function()
      util.write_header{comment_symbol="//"}
   end,
})


