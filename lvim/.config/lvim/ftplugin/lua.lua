local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({ { exe = "stylua", filetypes = { "lua" } } })
vim.cmd([[setlocal shiftwidth=2]])
vim.cmd([[setlocal tabstop=2]])
