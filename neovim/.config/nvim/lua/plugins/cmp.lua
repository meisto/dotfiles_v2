-- author: meisto
-- date: 2024-02-12 19:07:13

   
return {
   "hrsh7th/cmp-nvim-lsp",
   dependencies = {
      {
         "L3MON4D3/LuaSnip",
         version = "v2.2",
         run = "make install_jsregexp",
      },
      "hrsh7th/cmp-buffer",
      "hrsh7th/nvim-cmp",
      "saadparwaiz1/cmp_luasnip",
   },
   config = function()

      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Add Snippets to luasnip
      require("luasnip.loaders.from_lua").lazy_load({
         paths = vim.api.nvim_list_runtime_paths()[1] .. "/snippets"
      })

      local select_opts = { behavior = cmp.SelectBehavior.Select }
      cmp.setup({
      snippet = {
         expand = function(args) 
            luasnip.lsp_expand(args.body)
         end
      },
      
      sources = {
         {name = "path"},
         {name = "nvim_lsp", keyword_length = 1},
         {name = "buffer", keyword_length = 3},
         {name = "luasnip", keyword_length = 2},
      },

      window = {
         documentation = cmp.config.window.bordered(),
         completion = cmp.config.window.bordered(),
      },

      mapping = {
         ["<CR>"] = cmp.mapping.confirm({select = false}),
         ["<C-y>"] = cmp.mapping.confirm({select = true}),
         ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
         ["<C-n>"] = cmp.mapping.select_next_item(select_opts),
      },

      formatting = {
         fields = {"menu", "abbr", "kind"},
         format = function(entry, item) 
            local menu_icon = {
               nvim_lsp = "LSP",
               luasnip = "SNP",
               buffer = "BUF",
               path = "PAT",
            }

            item.menu = menu_icon[entry.source.name]
            if item.menu == nil then item.menu = "???" end

            return item
         end
      },

   })

      end
}


