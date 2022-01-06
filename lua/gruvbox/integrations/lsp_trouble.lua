local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.green },
		LspTroubleCount = { fg = cp.purple, bg = cp.bg4 },
		LspTroubleNormal = { fg = cp.fg0, bg = cp.bg0 },
	}
end

return M
