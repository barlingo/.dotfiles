-- keymappings

-- List of executable terminal commands:
lvim.builtin.which_key.mappings["x"] = {
	name = "+Execute",
	g = { "LazyGit" },
	G = { "GNU Debugger" },
}

lvim.builtin.terminal.execs = {
	{ "lazygit", "<leader>xg", "LazyGit" },
	{ "gdb", "<leader>xG", "GNU Debugger" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
	t = { "<cmd>TroubleToggle<cr>", "Toggle" },
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnosticss" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Diagnosticss" },
}

lvim.keys.normal_mode["<esc>"] = "<cmd>nohlsearch<cr>"
lvim.keys.normal_mode["Y"] = "y$"
lvim.keys.visual_mode["p"] = [["_dP]]
