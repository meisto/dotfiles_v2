-- author: meisto
-- date: 2024-01-23 19:06:07

print("Add LuaSnip snippets.")
require("luasnip.loaders.from_lua").lazy_load({paths = vim.api.nvim_list_runtime_paths()[1] .. "/snippets"})
