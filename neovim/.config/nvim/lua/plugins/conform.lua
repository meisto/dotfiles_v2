-- author: meisto
-- date: 2024-03-11 00:27:23

return {
  'stevearc/conform.nvim',
  opts = {
      formatters_by_ft = {
         python = { "black" },
         javascript = { "prettier" },
         typescript = { "prettier" },
         javascriptreact = { "prettier" },
         typescriptreact = { "prettier" },
         json = { "prettier" },
         css = { "prettier" },
         go = { "gofmt" }
      },
      format_on_save = {
         timeout_ms = 10000,
         lsp_fallback = false,
      },
      notify_on_error = true,
   },
}
