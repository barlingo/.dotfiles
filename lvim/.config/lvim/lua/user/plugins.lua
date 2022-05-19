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
            require("user.config.blankline").setup()
        end,
    },
    {
        "karb94/neoscroll.nvim",
        disable = false,
        config = function()
            require("user.config.neoscroll").config()
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
            require("user.config.colorizer").setup()
        end,
    },
    {
        "unblevable/quick-scope",
        disable = false,
        config = function()
            require("user.config.quickscope")
        end,
    },
    {
        "folke/trouble.nvim",
        disable = false,
        requires = "kyazdani42/nvim-web-devicons",
        cmd = { "Trouble", "TroubleToggle" },
        config = function()
            require("user.config.trouble").setup()
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        disable = true,
        event = "InsertEnter",
        config = function()
            require("user.config.lsp_signature").on_attach()
        end,
    },
    {
        "hkupty/iron.nvim",
        disable = true,
        setup = [[vim.g.iron_map_defaults = 0]],
        config = function()
            require("user.config.iron").setup()
        end,
        cmd = { "IronRepl", "IronSend", "IronReplHere" },
    },
    {
        "wfxr/minimap.vim",
        disable = true,
        run = "cargo install --locked code-minimap",
        config = function()
            require("user.config.minimap").setup()
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        disable = false,
        run = "cd app && npm install",
        ft = "markdown",
        config = function()
            require("user.config.markdown-preview").setup()
        end,
    },
}
