-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Mi 4. Aug 14:22:55 CEST 2021
-- Description: -
-- ======================================================================
local nvim_lsp = require('lspconfig')
local util = require('lspconfig/util')

nvim_lsp.pyright.setup {}

--   settings = {
--      pylsp = {
--         plugins = {
--            pycodestyle = {
--               maxLineLength = 100
--            }
--         },
--      }
--   },
--}
nvim_lsp.svelte.setup{}

nvim_lsp.gopls.setup{
   cmd = {'gopls', '-logfile=/tmp/gopls.log', '-rpc.trace'},
   filetypes = {'go', 'gomod'},
}

nvim_lsp.tsserver.setup {
   filetypes = {"typescript", "javascript"},
   cmd = {"typescript-language-server", "--stdio"}
}

nvim_lsp.clangd.setup{
   cmd = {"clangd-12"},
   filetypes = {"c", "cpp", "objc", "objcpp", "cuda", "proto"},
}
