-- Additional Plugins
lvim.plugins = {
	{ "lunarvim/colorschemes" },
	{
		"lukas-reineke/indent-blankline.nvim",
		-- event = "BufWinEnter",
		-- cmd = "BufWinEnter",
		disable = false,
		config = function()
			require("lv-plugins.blankline").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		-- event = "VimEnter",
		-- cmd = "BufWinEnter",
		disable = false,
		config = function()
			require("lv-plugins.colorizer").setup()
		end,
	},
	{
		"unblevable/quick-scope",
		-- event = "BufWinEnter",
		-- cmd = "BufWinEnter",
		disable = false,
		config = function()
			require("lv-plugins.quickscope").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		-- event = "BufWinEnter",
		-- cmd = "BufWinEnter",
		disable = false,
		requires = "kyazdani42/nvim-web-devicons",
		cmd = "Trouble",
		config = function()
			require("lv-plugins.trouble").setup()
		end,
	},
	-- {"hkupty/iron.nvim"}
}
