local M = {}

M.setup = function()
	vim.cmd("let g:minimap_width = 20")
	vim.cmd("let g:minimap_auto_start = 0")
	vim.cmd("let g:minimap_auto_start_win_enter = 0")
end

return M
