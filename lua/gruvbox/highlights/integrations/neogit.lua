local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.purple },
		NeogitRemote = { fg = cp.purple },
		NeogitHunkHeader = { bg = cp.blue, fg = cp.fg0 },
		NeogitHunkHeaderHighlight = { bg = cp.bg4, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = cp.gray_a, fg = cp.green },
		NeogitDiffDeleteHighlight = { fg = cp.red, bg = cp.bg2 },
		NeogitDiffAddHighlight = { fg = cp.green, bg = cp.bg2 },
	}
end

return M
