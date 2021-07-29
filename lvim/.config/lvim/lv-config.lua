-- General Settings
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.timeoutlen = 100
vim.opt.colorcolumn = "80"

-- Colorscheme
lvim.colorscheme = "spacegray"

-- On save autocmd
lvim.format_on_save = true
lvim.lint_on_save = false

-- LSP Diagnostics
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.show_line_diagnostics = false

-- Optional plugins LunarVim
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true

-- Builtin plugns settings
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

require("lv-plugins")
require("lv-autocommands")
require("lv-lang")
require("lv-keymappings")
