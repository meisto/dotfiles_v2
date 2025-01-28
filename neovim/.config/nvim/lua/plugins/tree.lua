-- author: meisto
-- date: 2024-03-20 02:09:27

return {
   'nvim-tree/nvim-tree.lua',
   dependencies = {
      'nvim-tree/nvim-web-devicons',
   },
   config = function ()
      require("nvim-tree").setup({
         view = {
            width = 40,
         }
      })
   end
}
