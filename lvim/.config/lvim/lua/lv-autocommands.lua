-- Autocommands
lvim.autocommands.custom_groups = {
	-- python
	{
		"Filetype",
		"python",
		"nnoremap <leader>xr <cmd>lua require('toggleterm.terminal')Terminal:new (on "
			.. vim.fn.expand("%")
			.. ";read')<CR>",
	},
}
