-- General settings
require("user.settings")

-- Theme
lvim.colorscheme = "onedarker"
lvim.transparent_window = false

-- On save autocmd
lvim.leader = "space"
-- lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true

-- LSP Diagnostics
lvim.lsp.diagnostics.show_line_diagnostics = false
lvim.lsp.diagnostics.virtual_text = false

-- Optional plugins LunarVim
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = false
lvim.builtin.notify.active = true
-- Builtin plugns settings
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"cpp",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	-- "tsx",
	"css",
	"rust",
	-- "java",
	"yaml",
}
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.bufferline.options.diagnostics = true

if vim.fn.has("wsl") == 1 then
	require("user.wsl")
end

require("user.plugins")
-- require("lv-autocommands")
require("user.keymappings")
