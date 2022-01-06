local M = {}

---@param cp table colour palette
function M.get(cp)
	return {
		NeogitBranch = { fg = cp.purple },
		NeogitRemote = { fg = cp.purple },

		NeogitHunkHeader = { bg = cp.blue_a, fg = cp.fg2 },
		NeogitDiffAdd = { bg = cp.bg1, fg = cp.green },
		NeogitDiffDelete = { bg = cp.bg1, fg = cp.red },

		NeogitHunkHeaderHighlight = { bg = cp.blue, fg = cp.fg0 },
		NeogitDiffContextHighlight = { bg = cp.bg1, fg = cp.fg0 },
		NeogitDiffDeleteHighlight = { bg = cp.bg2, fg = cp.red },
		NeogitDiffAddHighlight = { bg = cp.bg2, fg = cp.green },
	}
end

return M
