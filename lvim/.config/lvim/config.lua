--  General Settings
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.timeoutlen = 200
vim.opt.colorcolumn = "80"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cmdheight = 1
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 5

-- Remove Vim plugins not used
-- require("lv-extra-fn").vim_plugins(false)

-- Theme
lvim.colorscheme = "onedarker"
lvim.transparent_window = false

-- On save autocmd
lvim.leader = "space"
-- lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true

-- LSP Diagnostics
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.show_line_diagnostics = false

-- Optional plugins LunarVim
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = false
lvim.builtin.notify.active = true

-- Builtin plugns settings
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.bufferline.options.diagnostics = false

if vim.fn.has("wsl") == 1 then
	require("lv-wsl")
end

require("lv-plugins")
require("lv-autocommands")
require("lv-keymappings")
