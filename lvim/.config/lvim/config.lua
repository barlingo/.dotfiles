require("user.settings")
require("user.lsp")
require("user.builtin")
require("user.plugins")
-- require("user.autocommands")
require("user.keymappings")
if vim.fn.has("wsl") == 1 then
	require("user.wsl")
end
