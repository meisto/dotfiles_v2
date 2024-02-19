-- author: meisto
-- date: 2024-02-12 18:28:21

require("obsidian").setup({
   workspaces = {
      {
         name = "core",
         path = "~/Documents/brainMkIII",
      },
   },

   picker = {
      name = "telescope.nvim",
   },

   completion = {
      nvim_cmp = true,
      min_chars = 2,
   }
})
