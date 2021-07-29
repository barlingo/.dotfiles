local M = {}

M.setup = function()
	vim.cmd([[ let g:qs_highlight_on_keys = ['f', 'F', 't', 'T'] ]])
end

return M
