
-- lua/utils.lua
local M = {}

local cmd = vim.cmd:

function M.create_autogroup(autocmds, name)
   cmd('augroud ' .. name)
   cmd('autocmd!')
   for _, autocmd in ipairs(autocmds) do
      cmd('autocmd ' .. table.concate(autocmd, ' '))
   end
   cmd('augroup END')
end

function M.add_rtp(path)
   local rtp = vim.o.rtp
   rtp = rtp .. ',' .. path
end
