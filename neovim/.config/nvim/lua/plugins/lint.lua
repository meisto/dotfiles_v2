-- author: meisto
-- date: 2024-03-10 23:35:16

-- Docs:
-- https://github.com/mfussenegger/nvim-lint?tab=readme-ov-file

return {
   "mfussenegger/nvim-lint",
   config = function()
      require("lint").linters_by_ft = {
         sh = {"shellcheck"},
         bash = {"shellcheck"},
         zsh = {"shellcheck"},
         -- typescript = {"eslint"},
         javascript = {"eslint"},
         python = { "pylint"},
         golang = { "golangcilint" }
      }

      vim.api.nvim_create_autocmd(
         {"BufWritePost"}, {
            callback = function()
               require("lint").try_lint()
            end,
         }
      )
   end
}
