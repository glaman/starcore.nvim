local M = {}
local palette = require("starcore.colors.palette").dark

M.load = function()
  if vim.g.colors_name then vim.cmd.highlight("clear") end
  vim.g.colors_name = "starcore"
  vim.o.background = "dark"
  vim.o.termguicolors = true

  local hl = vim.api.nvim_set_hl

  -- Base groups
  hl(0, "Normal",       { fg = palette.fg, bg = palette.bg })
  hl(0, "NormalFloat",  { fg = palette.fg, bg = palette.bg_float })
  hl(0, "CursorLine",   { bg = palette.cursorline })
  hl(0, "Visual",       { bg = palette.selection })
  hl(0, "Comment",      { fg = palette.comment, italic = true })
  hl(0, "Constant",     { fg = palette.teal })
  hl(0, "String",       { fg = palette.cyan })
  hl(0, "Number",       { fg = palette.orange })
  hl(0, "Boolean",      { fg = palette.green })
  hl(0, "Identifier",   { fg = palette.fg })
  hl(0, "Function",     { fg = palette.white})
  hl(0, "Statement",    { fg = palette.fg })       -- keywords white
  hl(0, "Operator",     { fg = palette.orange })
  hl(0, "PreProc",      { fg = palette.fg })
  hl(0, "Type",         { fg = palette.fg })
  hl(0, "Special",      { fg = palette.yellow })
  hl(0, "Error",        { fg = palette.red, bold = true })
  hl(0, "WarningMsg",   { fg = palette.yellow })
  hl(0, "Keyword", {fg=palette.orange})


  -- UI
  hl(0, "Pmenu",        { fg = palette.fg, bg = palette.bg_float })
  hl(0, "PmenuSel",     { fg = palette.orange, bg = palette.selection, bold = true })
  hl(0, "StatusLine",   { fg = palette.fg, bg = palette.bg_alt })
  hl(0, "LineNr",       { fg = palette.fg_dim })
  hl(0, "CursorLineNr", { fg = palette.orange, bold = true })

  -- Git signs (common plugins)
  hl(0, "GitSignsAdd",    { fg = palette.green })
  hl(0, "GitSignsChange", { fg = palette.yellow })
  hl(0, "GitSignsDelete", { fg = palette.red })

  -- Tree-sitter (modern syntax)
  hl(0, "@variable",          { fg = palette.fg })
  hl(0, "@function",          { fg = palette.white, italic=true, })
  hl(0, "@string",            { fg = palette.cyan })
  hl(0, "@constant",          { fg = palette.teal })
  hl(0, "@keyword",           { fg = palette.orange })
  hl(0, "@punctuation",       { fg = palette.fg_dim })
  hl(0, "@operator",          { fg = palette.orange })
  hl(0, "@type",              { fg = palette.fg })
  hl(0, "@comment",           { link = "Comment" })
  hl(0, "@error",             { fg = palette.red })
  hl(0, "@keyword.function", {fg=palette.white})
  hl(0, "@function.call", {fg = palette.white})
  hl(0, "@function.builtin", {fg=palette.white})

  -- LSP
  hl(0, "DiagnosticError", { fg = palette.red })
  hl(0, "DiagnosticWarn",  { fg = palette.yellow })
  hl(0, "DiagnosticInfo",  { fg = palette.cyan })
  hl(0, "DiagnosticHint",  { fg = palette.fg_dim })
end

return M
