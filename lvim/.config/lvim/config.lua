vim.cmd("let g:python3_host_prog = '/usr/bin/python3'")
require("user.settings")
require("user.lsp")
require("user.builtin")
-- require("user.autocommands")
require("user.plugins")
require("user.keymappings")
if vim.fn.has("wsl") == 1 then
	require("user.wsl")
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
