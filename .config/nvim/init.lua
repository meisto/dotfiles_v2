-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:44:17 CEST 2021
-- Description: Neovim settings
-- ======================================================================

-- Helpfull resources:
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

-- Import the individuall scripts:
local bootstrap = require("bootstrap")
bootstrap.update_settings()
bootstrap.initialize_package_manager()
require("autocmds")

require("plugins")
require("keybindings")
require("lsp")
require("treesitter")

require("colorschemes.onedark")

-- Activate individual plugin configurations
require("plugins.flash")
require("plugins.indent_blankline")
require("plugins.lualine")
require("plugins.luasnip")
require("plugins.cmp")
require("plugins.obsidian")
