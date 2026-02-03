local M = {}

local palette = require("starcore.colors.palette").dark

M.setup = function()
  local wk = require("which-key")

  wk.setup({
    plugins = {
      marks = true,
      registers = true,
      spelling = { enabled = true, suggestions = 20 },
      presets = {
        operators = true,
        motions = true,
        text_objects = true,
        windows = true,
        nav = true,
        z = true,
        g = true,
      },
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    window = {
      border = "single",     -- none, single, double, shadow
      position = "bottom",
      margin = { 1, 0, 1, 0 },
      padding = { 1, 2, 1, 2 },
      winblend = 0,
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 4,
      align = "left",
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
    show_help = true,
    triggers = "auto",
  })

  -- Custom highlight groups for Which-Key
  local highlights = {
    WhichKey          = { fg = palette.fg, bg = palette.bg_float },
    WhichKeyGroup     = { fg = palette.orange, bg = palette.bg_float, bold = true },  -- prefix groups
    WhichKeyDesc      = { fg = palette.fg, bg = palette.bg_float },
    WhichKeySeparator = { fg = palette.fg_dim, bg = palette.bg_float },
    WhichKeyBorder    = { fg = palette.fg_dim, bg = palette.bg_float },               -- window border
    WhichKeyTitle     = { fg = palette.cyan, bg = palette.bg_alt, bold = true },     -- leader title
    WhichKeyValue     = { fg = palette.green, bg = palette.bg_float },               -- mapped value
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
