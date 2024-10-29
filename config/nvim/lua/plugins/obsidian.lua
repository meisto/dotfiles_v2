-- author: meisto
-- date: 2024-02-12 18:28:21
return {
   'epwalsh/obsidian.nvim',
   version = "*",
   lazy = true,
   ft = "markdown",
   dependencies = {
      -- Required
      "nvim-lua/plenary.nvim",

      -- Optional
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
   },
   opts = {
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
}
}

