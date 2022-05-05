local M = {}

function M.get(cp, config)
	return {
		GitSignsAdd = { fg = cp.green, bg = config.transparent_background and cp.none or cp.bg0, bold = true }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.purple, bg = config.transparent_background and cp.none or cp.bg0, bold = true }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.red, bg = config.transparent_background and cp.none or cp.bg0, bold = true }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
