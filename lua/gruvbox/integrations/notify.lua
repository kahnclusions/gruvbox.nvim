local M = {}

function M.get(cp)
	return {
		NotifyERRORBorder = { fg = cp.red },
		NotifyERRORIcon = { fg = cp.red },
		NotifyERRORTitle = { fg = cp.red, style = "italic" },
		NotifyWARNBorder = { fg = cp.yellow },
		NotifyWARNIcon = { fg = cp.yellow },
		NotifyWARNTitle = { fg = cp.yellow, style = "italic" },
		NotifyINFOBorder = { fg = cp.blue },
		NotifyINFOIcon = { fg = cp.blue },
		NotifyINFOTitle = { fg = cp.blue, style = "italic" },
		NotifyDEBUGBorder = { fg = cp.orange },
		NotifyDEBUGIcon = { fg = cp.orange },
		NotifyDEBUGTitle = { fg = cp.orange, style = "italic" },
		NotifyTRACEBorder = { fg = cp.red },
		NotifyTRACEIcon = { fg = cp.red },
		NotifyTRACETitle = { fg = cp.red, style = "italic" },
	}
end

return M
