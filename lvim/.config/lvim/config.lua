require("user.plugins")
require("user.settings")
require("user.lsp")
require("user.builtin")
-- require("user.autocommands")
require("user.keymappings")
if vim.fn.has("wsl") == 1 then
	require("user.wsl")
end
require("user.theme")
