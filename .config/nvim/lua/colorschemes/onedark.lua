-- ======================================================================
-- Author: meisto
-- Creation Date: Fri 08 Dec 2023 01:10:30 AM CET
-- Description: -
-- ======================================================================
require("onedark").setup {
   style = "warm",
   transparent = true,
   code_style = {
      comments = "italic",
      keywords = "none",
      functions = "none",
      strings = "none",
      variables = "none",
   },

   lualine = {
      transparent = false,
   }
}
require("onedark").load()
