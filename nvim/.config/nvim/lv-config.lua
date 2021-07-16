--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
O.format_on_save = true
O.auto_complete = true
O.auto_close_tree = 0
O.wrap = false
O.timeoutlen = 100
O.default_options.relativenumber = true
O.default_options.colorcolumn = "80"
O.default_options.tabstop = 4
O.colorscheme = "spacegray"
O.transparent_window = false
O.default_options.shiftwidth = 4

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.terminal.active = true
O.plugin.dap.active = true
O.plugin.zen.active = false

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = {}
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = false

-- python
O.lang.python.linter = "flake8"
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
-- to change default formatter from yapf to black
-- O.lang.python.formatter.exe = "black"
-- O.lang.python.formatter.args = {"-"}

-- go
-- to change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = nil

