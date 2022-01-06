local M = {}

function M.get(cp)
   return {
      TelescopeNormal = { fg = cp.fg1, bg = cp.bg0 },
      TelescopeBorder = { fg = cp.green },
      TelescopeSelectionCaret = { fg = cp.orange },
      TelescopeSelection = { fg = cp.fg1, bg = cp.bg2, style = "bold" },
      TelescopeMatching = { fg = cp.orange },
   }
end

return M
