-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Mi 4. Aug 14:22:55 CEST 2021
-- Description: -
-- ======================================================================
--
return {
   'neovim/nvim-lspconfig',
   config = function()
      local nvim_lsp = require('lspconfig')
      -- local util = require('lspconfig/util')


      nvim_lsp.pyright.setup {}
      nvim_lsp.svelte.setup {}
      nvim_lsp.tailwindcss.setup {}

      nvim_lsp.gopls.setup {
         cmd = { 'gopls', '-logfile=/tmp/gopls.log', '-rpc.trace' },
         filetypes = { 'go', 'gomod' },
      }
      nvim_lsp.ts_ls.setup {
	      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },

         -- only if a package.json file is found (to differenciate from deno projects.
         root_dir = nvim_lsp.util.root_pattern("package.json"),
         single_file_support = false
      }

      -- nvim_lsp.tsserver.setup {
	-- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
        -- cmd = { "typescript-language-server", "--stdio" }
      -- }

      -- nvim_lsp.clangd.setup { cmd = { "clangd-12" }, filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }, }

      -- nvim_lsp.marksman.setup {}

      nvim_lsp.lua_ls.setup {
         on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
               return
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
               runtime = {
                  -- Tell the language server which version of Lua you're using
                  -- (most likely LuaJIT in the case of Neovim)
                  version = 'LuaJIT'
               },
               -- Make the server aware of Neovim runtime files
               workspace = {
                  checkThirdParty = false,
                  library = {
                     vim.env.VIMRUNTIME
                     -- Depending on the usage, you might want to add additional paths here.
                     -- "${3rd}/luv/library"
                     -- "${3rd}/busted/library",
                  }
                  -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                  -- library = vim.api.nvim_get_runtime_file("", true)
               }
            })
         end,
         settings = {
            Lua = {}
         }

      }

   nvim_lsp.denols.setup {
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
      }

   end
}
