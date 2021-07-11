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
O.colorscheme = "spacegray" O.auto_close_tree = 0
O.wrap_lines = false
O.timeoutlen = 100
O.leader_key = " "
O.ignore_case = true
O.smart_case = true
O.relative_number = true
O.colorcolumn = "80"
O.cmdheight = 2
O.tab_stop = 4
O.shift_width = 4
O.transparent_window = 0.95



-- TODO User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.colorizer.active = false
O.plugin.ts_playground.active = false
O.plugin.indent_line.active = true
O.plugin.zen.active = false
O.plugin.floatterm.active = false
O.plugin.telescope_project.active = true
O.plugin.telescope_fzy.active = true

-- O.plugin.lazygit.active = true

-- dashboard
-- O.dashboard.custom_header = {"hi"}
-- O.dashboard.footer = {""}

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = {}
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- pythonRe
-- O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- javascript
O.lang.tsserver.linter = nil

-- Additional Plugins
-- O.user_plugins = {

--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
O.user_autocommands= {{ "BufWinEnter", "*", "set guifont=FiraCode\\ Nerd\\ Font\\ Mono:h13"}}
O.user_which_key = {
  t = {
    name = "+terminal",
    e = { "<cmd>terminal<cr>", "Execute terminal" },
  },
}
