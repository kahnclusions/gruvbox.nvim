local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.green },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.purple },
		WhichKeySeperator = { fg = cp.gray },
		WhichKeySeparator = { fg = cp.gray },
		WhichKeyFloat = { bg = cp.bg0 },
		WhichKeyValue = { fg = cp.gray0 },
	}
end

return M
