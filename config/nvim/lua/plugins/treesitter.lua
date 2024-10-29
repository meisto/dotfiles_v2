-- author: meisto
-- date: 2024-03-10 23:56:18

return {
   -- Code
   {
      'nvim-treesitter/nvim-treesitter',
      build = ":TSUpdate",
      config = function () 
         local configs = require("nvim-treesitter.configs")

         configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
         })
      end
   },
   'nvim-treesitter/playground',
}
