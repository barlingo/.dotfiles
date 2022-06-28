-- Additional Plugins
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

lvim.plugins = {
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
          last_active = "<C-\\>",
          next = "<C-Space>",
        },
      })
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local lsp_installer_servers = require("nvim-lsp-installer.servers")
      local _, requested_server = lsp_installer_servers.get_server("rust_analyzer")
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
        },
        server = {
          cmd_env = requested_server._default_options.cmd_env,
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        },
      })
    end,
    ft = { "rust", "rs" },
  },
  {
    "p00f/nvim-ts-rainbow",
    disable = false,
  },
  {
    "arkav/lualine-lsp-progress",
    disable = true,
    opt = false,
  },
  {
    "navarasu/onedark.nvim",
    disable = false,
  },
  {
    "tzachar/cmp-tabnine",
    disable = true,
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  {
    "lunarvim/colorschemes",
    disable = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    disable = false,
    event = "BufReadPost",
    config = function()
      require("user.config.blankline").setup()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    disable = false,
    event = "BufReadPost",
    config = function()
      require("user.config.neoscroll").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    disable = true,
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
    event = "BufReadPost",
    requires = "kyazdani42/nvim-web-devicons",
    cmd = { "Trouble", "TroubleToggle" },
    config = function()
      require("user.config.trouble").setup()
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    disable = false,
    event = "BufReadPost",
    config = function()
      require("lsp_signature").setup()
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
  {
    "ixru/nvim-markdown",
    ft = "markdown",
    disable = false,
  },
}
