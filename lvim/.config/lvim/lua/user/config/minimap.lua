local M = {}

M.setup = function()
  vim.cmd("let g:minimap_width = 20")
  vim.cmd("let g:minimap_auto_start = 1")
  vim.cmd("let g:minimap_auto_start_win_enter = 1")
end

return M
