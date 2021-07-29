-- lua
lvim.lang.lua.autoformat = true
lvim.lang.lua.formatter.exe = "stylua"

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
-- python
lvim.lang.python.autoformat = true
lvim.lang.python.formatter.exe = "black"
lvim.lang.python.linters = { "pylint" }
-- To change default formatter from yapf to black
-- lvim.lang.python.formatter.exe = "black"
-- lvim.lang.python.formatter.args = {"-"}
-- To change enabled linters
-- https://github.com/mfussenegger/nvim-lint#available-linters
-- lvim.lang.python.linters = { "flake8", "pylint", "mypy", ... }

-- go
-- To change default formatter from gofmt to goimports
-- lvim.lang.formatter.go.exe = "goimports"

-- javascript
-- lvim.lang.tsserver.linter = nil

-- rust
-- lvim.lang.rust.rust_tools = true
-- lvim.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }

-- scala
-- lvim.lang.scala.metals.active = true
-- lvim.lang.scala.metals.server_version = "0.10.5",

--LaTeX
-- lvim.tions: https://github.com/latex-lsp/texlab/blob/master/docs/options.md
-- lvim.lang.latex.active = false
-- lvim.lang.latex.aux_directory = "."
-- lvim.lang.latex.bibtex_formatter = "texlab"
-- lvim.lang.latex.build.args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" }
-- lvim.lang.latex.build.executable = "latexmk"
-- lvim.lang.latex.build.forward_search_after = false
-- lvim.lang.latex.build.on_save = false
-- lvim.lang.latex.chktex.on_edit = false
-- lvim.lang.latex.chktex.on_open_and_save = false
-- lvim.lang.latex.diagnostics_delay = 300
-- lvim.lang.latex.formatter_line_length = 80
-- lvim.lang.latex.forward_search.executable = "zathura"
-- lvim.lang.latex.latex_formatter = "latexindent"
-- lvim.lang.latex.latexindent.modify_line_breaks = false
-- lvim.lang.latex.auto_save = false
-- lvim.lang.latex.ignore_errors = { }
