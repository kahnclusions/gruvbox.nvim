local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax
  local stl = config.styles
  local P = spec.palette

  local hl = {
    -- Identifiers ------------------------------------------------------------
    SnacksPickerDir = { fg = P.fg4, style = stl.variables },                     -- various variable names
    SnacksPickerFile = { fg = P.fg1 },                                           -- various variable names
    SnacksPickerCursorLine = { bg = P.bg3, style = stl.variables },              -- various variable names
    SnacksPickerDimmed = { fg = P.red.base, bg = P.bg0, style = stl.variables }, -- various variable names

    SnacksIndent = { fg = "#504945" },
    SnacksIndentChar = { fg = spec.bg0 },
    SnacksIndentBlank = { fg = "#504945" },

    SnacksIndentContextChar = { fg = spec.syntax.variable },
    SnacksIndentContextStart = { sp = spec.syntax.variable, style = "underline" },
    SnacksIndent6 = { blend = 0, fg = P.yellow.base },
    SnacksIndent5 = { blend = 0, fg = P.red.base },
    SnacksIndent4 = { blend = 0, fg = P.cyan.base },
    SnacksIndent3 = { blend = 0, fg = P.orange.base },
    SnacksIndent2 = { blend = 0, fg = P.blue.base },
    SnacksIndent1 = { blend = 0, fg = P.pink.base },
  }

  -- hl["@text.title.6.markdown"] = hl["@markup.heading.6.markdown"]

  return hl
end

return M
