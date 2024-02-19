-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Mi 4. Aug 14:22:55 CEST 2021
-- Description: -
-- ======================================================================


local nvim_lsp = require('lspconfig')

local on_attach = function(cline, bufnr)

   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- nvim_lsp.pyright.setup {
-- on_attach = on_attach
-- }

