local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({ { exe = "rustfmt", filetypes = { "rust" } } })

if lvim.builtin.dap.active then
  local dap_install = require("dap-install")
  dap_install.config("codelldb", {})
end
