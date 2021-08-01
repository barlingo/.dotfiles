M = {}

M.vim_plugins = function(enabled)
	-- Neovim
	if not enabled then
		local disabled_built_ins = {
			"netrw",
			"netrwPlugin",
			"netrwSettings",
			"netrwFileHandlers",
			"gzip",
			"zip",
			"zipPlugin",
			"tar",
			"tarPlugin", -- 'man',
			"getscript",
			"getscriptPlugin",
			"vimball",
			"vimballPlugin",
			"2html_plugin",
			"logipat",
			"rrhelper",
			"spellfile_plugin",
			-- 'matchit', 'matchparen', 'shada_plugin',
		}
		for _, _plugin in pairs(disabled_built_ins) do
			vim.g["loaded_" .. _plugin] = 1
		end
	end
end

return M
