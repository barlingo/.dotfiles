-- lua
lvim.lang.lua.autoformat = true
lvim.lang.lua.formatter.exe = "stylua"

-- python
lvim.lang.python.autoformat = true
lvim.lang.python.formatter.exe = "black"
lvim.lang.python.linters = ""
-- lvim.lang.python.linters = { "pylint" }

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
