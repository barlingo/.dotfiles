local M = {}

M.setup = function()
  vim.g.indentLine_enabled = 1
  vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile", "dashboard", "quickfix" }
  vim.g.indent_blankline_filetype_exclude = {
    "help",
    "startify",
    "terminal",
    "lspinfo",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
  }
  vim.opt.list = false
  -- vim.opt.listchars:append("space:⋅")
  -- vim.opt.listchars:append("eol:↴")

  require("indent_blankline").setup({
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
  })
  vim.g.indent_blankline_char = "▏"
  vim.g.indent_blankline_context_char = "▏"
  vim.g.indent_blankline_show_trailing_blankline_indent = true
  -- vim.g.indentLine_leadingSpaceEnabled = true
  -- vim.g.indentLine_leadingSpaceChar = "·"
  vim.g.indent_blankline_show_first_indent_level = true
  vim.g.indent_blankline_use_treesitter = true
  vim.g.indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  }
  -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
  vim.wo.colorcolumn = "99999"
  vim.cmd("hi IndentBlanklineChar guifg=#404040")
  vim.cmd("hi IndentBlanklineContextChar guifg=#626262")
end

return M
