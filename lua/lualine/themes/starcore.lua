local palette = require("starcore.colors.palette").dark

local starcore = {}

-- Inactive sections (dimmed)
starcore.inactive = {
  a = { fg = palette.fg_dim, bg = palette.bg_alt, gui = "bold" },
  b = { fg = palette.fg_dim, bg = palette.bg_alt },
  c = { fg = palette.fg_dim, bg = palette.bg },
}

-- Normal mode - clean and subtle
starcore.normal = {
  a = { fg = palette.fg, bg = palette.bg_alt, gui = "bold" },
  b = { fg = palette.orange, bg = palette.bg_alt },
  c = { fg = palette.fg_dim, bg = palette.bg },
}

-- Insert mode → Green (armor / ready to fit)
starcore.insert = {
  a = { fg = palette.fg, bg = palette.green, gui = "bold" },
  b = { fg = palette.green, bg = palette.bg_alt },
}

-- Visual mode → Orange (targeting / active modules)
starcore.visual = {
  a = { fg = palette.fg, bg = palette.orange, gui = "bold" },
  b = { fg = palette.orange, bg = palette.bg_alt },
}

-- Replace mode → Red (warning / overload)
starcore.replace = {
  a = { fg = palette.fg, bg = palette.red, gui = "bold" },
  b = { fg = palette.red, bg = palette.bg_alt },
}

-- Command mode → Yellow (attention / capacitor strain)
starcore.command = {
  a = { fg = palette.fg, bg = palette.yellow, gui = "bold" },
  b = { fg = palette.yellow, bg = palette.bg_alt },
}

-- Terminal mode → Cyan (info panel / capacitor readout)
starcore.terminal = {
  a = { fg = palette.fg, bg = palette.cyan, gui = "bold" },
  b = { fg = palette.cyan, bg = palette.bg_alt },
}

return starcore
