--[[
lvim.is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable ]]
-- THESE ARE EXAMPLE Clvim.FIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
-- lvim.format_on_save = true
-- lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.show_line_diagnostics = false
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

require "lv-plugins"
require "lv-autocommands"
require "lv-lang"
require "lv-keymappings"

vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.timeoutlen = 100
vim.opt.colorcolumn = "80"
-- vim.opt.tabstop = 4
-- 300.opt.colorcolumn = "80"




