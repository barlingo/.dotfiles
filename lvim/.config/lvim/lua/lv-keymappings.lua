-- keymappings

-- List of executable terminal commands:
lvim.builtin.which_key.mappings["x"] = { "+Execute" }
lvim.builtin.terminal.execs = {
	{ "lazygit", "gg", "LazyGit" },
	{ "gdb", "xg", "GNU Debugger" },
	{ "ssh", "xs", "SSH Connection" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
}
