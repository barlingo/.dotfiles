require("onedark").setup({
  -- Main options --
  style = "darker", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true, -- Show/hide background
  term_colors = false, -- Change terminal color as per the selected theme style
  ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  -- toggle theme style ---
  -- toggle_style_key = "<leader>ts", -- Default keybinding to toggle
  toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = "italic",
    keywords = "bold",
    functions = "bold",
    strings = "italic",
    variables = "none",
  },
  colors = {
    bg0 = "#232326",
    bg1 = "#2c2d31",
    bg2 = "#35363b",
    bg3 = "#37383d",
    bg_d = "#1b1c1e",
    bg_blue = "#68aee8",
    bg_yellow = "#e2c792",
  },

  highlights = {
    TSOperator = { fg = "#61afef" },
    TSComment = { fg = "#909090" },
    DiagnosticHint = { fg = "#61afef" },
    TSPunctDelimiter = { fg = "#a0a8b7" },
    TSPunctBracket = { fg = "#a0a8b7" },
    rainbowcol1 = { fg = "#a0a8b7" },
  },
  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
})
lvim.builtin.alpha.dashboard.section.header.opts.hl = "TSMethod"
local custom_onedark = require("lualine.themes.onedark")
custom_onedark.normal.b = { bg = "#37383d" }
custom_onedark.insert.b = { bg = "#37383d" }
custom_onedark.visual.b = { bg = "#37383d" }
custom_onedark.replace.b = { bg = "#37383d" }
custom_onedark.command.b = { bg = "#37383d" }
custom_onedark.normal.c = { bg = "#37383d" }
custom_onedark.normal.x = { bg = "#37383d" }
custom_onedark.normal.y = { bg = "#37383d" }
custom_onedark.normal.z = { bg = "#37383d" }

lvim.builtin.lualine.options.theme = custom_onedark
lvim.builtin.lualine.sections.lualine_a = { "mode" }
