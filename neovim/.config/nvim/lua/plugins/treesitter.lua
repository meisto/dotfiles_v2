-- author: meisto
-- date: 2024-03-10 23:56:18

return {
   -- Code
   {
      'nvim-treesitter/nvim-treesitter',
      build = ":TSUpdate",
      config = function ()
         require("nvim-treesitter.configs").setup({
            ensure_installed = {
               "c",
               "css",
               "lua",
               "vim",
               "vimdoc",
               "javascript",
               "html",
               "python",
               "go"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
               enable = true,
               keymaps = {
                  init_selection = 'gnn',
                  node_incremental = 'grn',
                  scope_incremental = 'grc',
                  node_decremental = 'grm',
               }
            },
         })

vim.wo.foldmethod='expr'
vim.cmd('set foldexpr=nvim_treesitter#foldexpr()')

print('Loaded custom treesitter configs.')
      end
   },
   -- 'nvim-treesitter/playground',
}
