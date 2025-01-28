-- ==================================================================
-- Author: Tobias Meisel (meisto)
-- Creation Date: Di 3. Aug 22:00:00 CEST 2021
-- Description: Custom Neovim statusline, sourced by 'init.lua'.
-- Based on this great tutorial: https://icyphox.sh/blog/nvim-lua/
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

highlight("Default", "#999999", default_bg_color)

highlight("ModeBlockN", "#FFFFFF", "#990000")
highlight("ModeBlockNOut", "#990000", nil)

highlight("ModeBlockI", "black", "#BBBBBB")
highlight("ModeBlockIOut", "#BBBBBB", nil)

highlight("DarkGreyIn", default_bg_color, "#555555")
highlight("DarkGrey", "#DDDDDD",  "#555555")
highlight("DarkGreyOut", "#555555", default_bg_color)

-- 
 local mode_map = {
	['n'] = '%#ModeBlockN# N %#ModeBlockNOut#',
	['no'] = 'n·operator pending ',
	['v'] = ' v ',
	['V'] = ' V ',
	[''] = ' ^V ',
	['s'] = ' S ',
	['S'] = ' S ',
	[''] = ' S ',
	['i'] = '%#ModeBlockI# I %#ModeBlockIOut#',
	['R'] = ' R ',
	['Rv'] = ' VR ',
	['c'] = ' C ',
	['cv'] = ' EX ',
	['ce'] = ' EX ',
	['r'] = ' P  ',
	['rm'] = 'more',
	['r?'] = 'confirm ',
	['!'] = 'shell ',
	['t'] = 'terminal '
}

local function get_mode_string()
   local m = vim.api.nvim_get_mode().mode
   if mode_map[m] == nil then return "-" end
   return mode_map[m]
end

-- Get constants
local hostname = require('io').popen('hostname'):read()


function build_statusline()
   local stl = {
     get_mode_string(),
     '%#DarkGreyIn#%#DarkGrey# %f %#DarkGreyOut#',
     '%#Default#',
     '%m',
     '%=',
     '%{&filetype} | ' .. hostname .. ' | %p%% ',
     '%#SecondaryBlock# %l,%c ',
   }
   return table.concat(stl)
end

-- Set the statusbar to evaluate the function on demand
vim.o.statusline = '%!luaeval(\'build_statusline()\')'


print "Succesfully sourced 'statusline.lua'."

