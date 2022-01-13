-- Additional Plugins
lvim.plugins = {
	{
		"lunarvim/colorschemes",
		disable = true,
		opt = false,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		disable = false,
		-- event = "InsertEnter",
		-- cond = "InsertMode",
		config = function()
			require("config.blankline").setup()
		end,
	},
	{
		"karb94/neoscroll.nvim",
		disable = false,
		config = function()
			require("config.neoscroll").config()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		disable = false,
		event = "InsertEnter",
		cond = "InsertMode",
		opt = true,
		cmd = "ColorizerToggle",
		config = function()
			require("config.colorizer").setup()
		end,
	},
	{
		"unblevable/quick-scope",
		disable = false,
		config = function()
			require "config.quickscope"
		end,
	},
	{
		"folke/trouble.nvim",
		disable = false,
		requires = "kyazdani42/nvim-web-devicons",
		cmd = { "Trouble", "TroubleToggle" },
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
