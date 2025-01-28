-- author: meisto
-- date: 2024-04-24 17:14:55

return {
   "folke/noice.nvim",
   event = "VeryLazy",
   opts = {
      views = {
         mini = {
            win_options = {
               winblend = 0,
            }
         }
      },
      lsp = {
         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
         override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
         },
      },
      routes = {
         -- Sample routes: https://github.com/gennaro-tedesco/dotfiles/blob/0d09a8d4ea438e97fc273513e7a05b64aabe76d5/nvim/lua/plugins/noice.lua#L108-L116
         { filter = { event = "msg_show", kind = "", find = "written"}, view = "mini"},
         { filter = { event = "msg_show", find="search hit BOTTOM"}, skip = true },
   		{ filter = { event = "msg_show", find = "search hit TOP" }, skip=true },
   		{ filter = { event = "msg_show", kind="", find = "Config Change" }, view="mini" },
      },
      -- you can enable a preset for easier configuration
      presets = {
         bottom_search = false, -- use a classic bottom cmdline for search
         command_palette = true, -- position the cmdline and popupmenu together
         long_message_to_split = true, -- long messages will be sent to a split
         inc_rename = false, -- enables an input dialog for inc-rename.nvim
         lsp_doc_border = false, -- add a border to hover docs and signature help
      },
   },
   dependencies = {
      "MunifTanjim/nui.nvim",
   }
}
