-- Additional Plugins
lvim.plugins = {
	{
		"lunarvim/colorschemes",
		opt = true,
		disable = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		disable = false,
		cond = "InsertMode",
		-- cmd = "IndentBlanklineEnable",
		config = function()
			require("config.blankline").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		disable = false,
		cond = "InsertMode",
		opt = true,
		cmd = "ColorizerToggle",
		config = function()
			require("config.colorizer").setup()
		end,
	},
	{
		"unblevable/quick-scope",
		-- event = "InsertEnter",
		disable = false,
		cond = "InsertMode",
		config = function()
			require("config.quickscope").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		disable = false,
		requires = "kyazdani42/nvim-web-devicons",
		cmd = "Trouble",
		config = function()
			require("config.trouble").setup()
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		disable = true,
		event = "InsertEnter",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	{
		"hkupty/iron.nvim",
		disable = true,
		setup = [[vim.g.iron_map_defaults = 0]],
		config = function()
			require("config.iron").setup()
		end,
		cmd = { "IronRepl", "IronSend", "IronReplHere" },
	},
}
