local M = {}

function M.get(cp, config)
	local root_dir_color = cp.purple

	if config.integrations.nvimtree.show_root then
		root_dir_color = cp.blue
	end

	return {
		NvimTreeNormal = { fg = cp.fg0, bg = cp.bg1 },
		NvimTreeFolderName = { fg = cp.green },
		NvimTreeFolderIcon = { fg = cp.orange },
		NvimTreeOpenedFolderName = { fg = cp.green, style = "bold" },
		NvimTreeEmptyFolderName = { fg = cp.blue },
		NvimTreeIndentMarker = { fg = cp.gray },
		NvimTreeVertSplit = { fg = cp.bg2, bg = cp.bg1 },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.purple },
		NvimTreeStatuslineNc = { fg = cp.bg1, bg = cp.bg0 },
		NvimTreeGitDirty = { fg = cp.yellow },
		NvimTreeGitNew = { fg = cp.blue },
		NvimTreeGitDeleted = { fg = cp.red },
		NvimTreeSpecialFile = { fg = cp.purple },
		NvimTreeImageFile = { fg = cp.fg0 },
		NvimTreeOpenedFile = { fg = cp.purple },
	}
end

return M
