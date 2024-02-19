
local M = {}

function M.file_exists(path)
   local f = io.open(path, "r")
   if f~=nil then io.close(f) return true else return false end
end

function M.is_current_buffer_empty()
   line_count = vim.api.nvim_buf_line_count(0) 

   return line_count <= 1 and vim.api.nvim_buf_get_lines(0, 0, 1, false)[1] == ""
end

function M.write_header(t)
   if M.is_current_buffer_empty() then
      comment_symbol_start = t["comment_symbol"] .. " "

      comment_symbol_end = ""
      if t.comment_symbol_end ~= nil then comment_symbol_end = " " .. t.comment_symbol_end end


      -- nvim_buf_set_lines({buffer}, {start}, {end}, {strict_indexing}, {replacement}
      -- https://neovim.io/doc/user/api.html#nvim_buf_set_lines()
      vim.api.nvim_buf_set_lines(0, 0, 0, false, {
         comment_symbol_start .. "author: meisto" .. comment_symbol_end,
         comment_symbol_start .. "date: " .. os.date("%Y-%m-%d %H:%M:%S") .. comment_symbol_end,
         "",
      })

      -- Set cursor to position
      vim.api.nvim_win_set_cursor(0, {4, 0})
   end
end

return M
