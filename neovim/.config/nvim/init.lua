-- ======================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 21:44:17 CEST 2021
-- Description: Neovim settings
-- ======================================================================

-- Helpfull resources:
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
require("config.settings")
require("config.lazy")

require("config.autocmds")

require("config.keybindings")
-- require("treesitter")

require("colorschemes.onedark")

require("telescope").load_extension("noice")

-- Activate individual plugin configurations
