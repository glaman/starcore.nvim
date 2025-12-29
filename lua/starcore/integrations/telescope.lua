local M = {}

local palette = require("starcore.colors.palette").dark

M.setup = function()
  local telescope = require("telescope")

  telescope.setup({
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          mirror = false,
          prompt_position = "top",
          preview_width = 0.55,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
      },
      file_ignore_patterns = { "node_modules", "%.git/" },
      path_display = { "truncate" },
      border = {},
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      color_devicons = true,
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = true,
      },
      live_grep = {
        theme = "dropdown",
      },
      buffers = {
        theme = "dropdown",
      },
    },
    extensions = {},
  })

  -- Load Telescope highlight groups
  local colors = {
    TelescopeBorder         = { fg = palette.fg_dim, bg = palette.bg_float },
    TelescopeNormal         = { fg = palette.fg, bg = palette.bg_float },
    TelescopePromptNormal   = { fg = palette.fg, bg = palette.bg_alt },
    TelescopePromptBorder   = { fg = palette.fg_dim, bg = palette.bg_alt },
    TelescopePromptTitle    = { fg = palette.orange, bg = palette.bg_alt, bold = true },
    TelescopePromptPrefix   = { fg = palette.orange, bg = palette.bg_alt },

    TelescopeResultsNormal  = { fg = palette.fg, bg = palette.bg_float },
    TelescopeResultsBorder  = { fg = palette.fg_dim, bg = palette.bg_float },
    TelescopeResultsTitle   = { fg = palette.cyan, bg = palette.bg_float, bold = true },

    TelescopePreviewNormal  = { fg = palette.fg, bg = palette.bg },
    TelescopePreviewBorder  = { fg = palette.fg_dim, bg = palette.bg },
    TelescopePreviewTitle   = { fg = palette.green, bg = palette.bg, bold = true },

    TelescopeSelection      = { fg = palette.orange, bg = palette.selection, bold = true },
    TelescopeSelectionCaret = { fg = palette.orange, bg = palette.selection },
    TelescopeMatching       = { fg = palette.yellow, bold = true },
  }

  for group, opts in pairs(colors) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
