-- ======================================================================
-- Author: meisto
-- Creation Date: Fri 08 Dec 2023 01:08:25 AM CET
-- Description: -
-- ======================================================================
return {
   'nvim-lualine/lualine.nvim',
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'onedark',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch'},
          lualine_c = {'filename'},
          lualine_x = {{
               require("noice").api.statusline.mode.get,
               cond = require("noice").api.statusline.mode.has,
               color = { fg = "#ff9e64" },
            }, 'encoding', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
      }


   end
}

