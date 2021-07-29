-- Additional Plugins
lvim.plugins = {
	{
		"lunarvim/colorschemes",
		opt = true,
		disable = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		-- opt = true,
		event = "InsertEnter",
		disable = false,
		-- cmd = "IndentBlanklineEnable",
		config = function()
			require("lv-plugins.blankline").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		event = "InsertEnter",
		disable = false,
		opt = true,
		cmd = "ColorizerToggle",
		config = function()
			require("lv-plugins.colorizer").setup()
		end,
	},
	{
		"unblevable/quick-scope",
		-- event = "InsertEnter",
		disable = false,
		config = function()
			require("lv-plugins.quickscope").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		disable = false,
		requires = "kyazdani42/nvim-web-devicons",
		cmd = "Trouble",
		config = function()
			require("lv-plugins.trouble").setup()
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		disable = true,
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
}
