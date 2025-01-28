-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Mi 4. Aug 11:47:09 CEST 2021
-- Description: Settings for the treesitter plugin
-- ======================================================================
require('nvim-treesitter.configs').setup({
   ensure_installed = {'python', 'lua', 'go' }, -- Values: 'all', 'maintained',
   highlight = {   -- Syntax highlighting
      enable = true,
      disable = {},     -- Do not use for these languages
   },
   incremental_selection = {
      enable = true,
      keymaps = {
         init_selection = 'gnn',
         node_incremental = 'grn',
         scope_incremental = 'grc',
         node_decremental = 'grm',
      }
   },
   playground = { enable = true },
})

vim.wo.foldmethod='expr'
vim.cmd('set foldexpr=nvim_treesitter#foldexpr()')

print('Loaded custom treesitter configs.')

