require("user.settings")
require("user.lsp")
require("user.builtin")
-- require("user.autocommands")
require("user.plugins")
require("user.keymappings")
if vim.fn.has("wsl") == 1 then
	require("user.wsl")
end
-- Fix cmp issue with enter and tab
local cmp = require("cmp")
lvim.builtin.cmp.mapping["<CR>"] = cmp.mapping.confirm({
	behavior = cmp.ConfirmBehavior.Replace,
	select = true,
})
