-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:44:17 CEST 2021
-- Description: Neovim settings
-- ======================================================================

-- Helpfull resources:
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

-- Import the individuall scripts:
require('meisto.settings')
require('meisto.remaps')
require('meisto.statusline')
require('meisto.plugins')

function activate_treesitter()
   require('treesitter.settings')
end

-- function activate_lsp()
require('lspconfig.settings')
-- end

-- Finish
print "Sourced 'init.lua'"
