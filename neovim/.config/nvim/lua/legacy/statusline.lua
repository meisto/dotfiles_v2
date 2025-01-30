-- ==================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 22:00:00 CEST 2021
-- Description: Custom Neovim statusline, sourced by 'init.lua'.
-- Based on this great tutorial: https://icyphox.sh/blog/nvim-lua/
-- Also influenced by: https://nihilistkitten.me/nvim-lua-statusline/
-- ==================================================================

-- Wrapper to add highlight groups easily
local function highlight(name, fg, bg)
   fg_string = ''
   bg_string = ''

   if fg ~= nil then
      fg_string = "guifg=" .. fg
   end
   if bg ~= nil then
      bg_string = "guibg=" .. bg
   end

   cmd = "highlight " .. name .. " " .. fg_string .. " " .. bg_string
   vim.cmd(cmd)
end

local default_bg_color = "#333333"

-- highlight("Default", "#999999", default_bg_color)
-- 
-- highlight("ModeBlockN", "#FFFFFF", "#990000")
-- highlight("ModeBlockNOut", "#990000", nil)
-- 
-- highlight("ModeBlockI", "black", "#BBBBBB")
-- highlight("ModeBlockIOut", "#BBBBBB", nil)
-- 
-- highlight("DarkGreyIn", default_bg_color, "#555555")
-- highlight("DarkGrey", "#DDDDDD",  "#555555")
-- highlight("DarkGreyOut", "#555555", default_bg_color)

-- Set glyph to denote distance
dist_sign = ""
-- dist_sign = ""

 local mode_map = {
	['n'] = '%#ModeBlockN# N %#ModeBlockNOut#' .. dist_sign,
	['no'] = 'n·operator pending %#ModeBlockNOut#' .. dist_sign,
	['v'] = ' v %#ModeBlockNOut#' .. dist_sign,
	['V'] = ' V %#ModeBlockNOut#' .. dist_sign,
	[''] = ' ^V %#ModeBlockNOut#' .. dist_sign,
	['s'] = ' S %#ModeBlockNOut#' .. dist_sign,
	['S'] = ' S %#ModeBlockNOut#' .. dist_sign,
	[''] = ' S %#ModeBlockNOut#' .. dist_sign,
	['i'] = '%#ModeBlockI# I %#ModeBlockIOut#' .. dist_sign,
	['R'] = ' R %#ModeBlockNOut#' .. dist_sign,
	['Rv'] = ' VR %#ModeBlockNOut#' .. dist_sign,
	['c'] = ' C %#ModeBlockNOut#' .. dist_sign,
	['cv'] = ' EX %#ModeBlockNOut#' .. dist_sign,
	['ce'] = ' EX %#ModeBlockNOut#' .. dist_sign,
	['r'] = ' P  %#ModeBlockNOut#' .. dist_sign,
	['rm'] = 'more%#ModeBlockNOut#' .. dist_sign,
	['r?'] = 'confirm %#ModeBlockNOut#' .. dist_sign,
	['!'] = 'shell %#ModeBlockNOut#' .. dist_sign,
	['t'] = 'terminal %#ModeBlockNOut#' .. dist_sign
}

local function get_mode_string()
   local m = vim.api.nvim_get_mode().mode
   if mode_map[m] == nil then return "-" end
   return mode_map[m]
end

-- Get constants
-- local hostname = require('io').popen('hostname'):read()

-- :help 'statusline' for codes
function Build_statusline()
   local stl = {
     get_mode_string(),
     '%#DarkGreyIn#%#DarkGrey# %t %#DarkGreyOut#',
     '%#Default#',
     '%m',
     '%=',
     '%{&filetype} | ', -- .. hostname .. ' | 
     '%p%% ',
     '%#SecondaryBlock# %l,%c ',
   }
   return table.concat(stl)
end

-- Set the statusbar to evaluate the function on demand
vim.o.statusline = '%!luaeval(\'Build_statusline()\')'


print "Succesfully sourced 'statusline.lua'."
