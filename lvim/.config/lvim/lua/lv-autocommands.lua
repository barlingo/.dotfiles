-- -- Autocommands
lvim.autocommands.custom_groups = {
	-- python
	{
		"Filetype",
		"python",
		"nnoremap <leader>xr <cmd>lua require('core.terminal')._exec_toggle('python "
			.. vim.fn.expand("%")
			.. ";read')<CR>",
	},
}
