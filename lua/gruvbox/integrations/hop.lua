local M = {}

function M.get(cp)
	return {
      HopCursor = { bg = cp.fg4, fg = cp.bg2 },
		HopNextKey = { bg = cp.bg0, fg = cp.red, style = "bold,italic" },
		HopNextKey1 = { bg = cp.bg0, fg = cp.blue, style = "bold,italic" },
		HopNextKey2 = { bg = cp.bg0, fg = cp.blue_a, style = "bold,italic" },
		HopUnmatched = { bg = cp.bg0, fg = cp.bg4 },
	}
end

return M
