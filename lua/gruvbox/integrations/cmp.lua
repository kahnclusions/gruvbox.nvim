local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.gray_a },
		CmpItemAbbrDeprecated = { fg = cp.gray, stlye = "strikethrough" },
		CmpItemKind = { fg = cp.blue },
		CmpItemMenu = { fg = cp.fg0 },
		CmpItemAbbrMatch = { fg = cp.fg0, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.fg0, style = "bold" },

		-- kind support
		CmpItemKindSnippet = { fg = cp.purple },
		CmpItemKindKeyword = { fg = cp.red },
		CmpItemKindText = { fg = cp.aqua },
		CmpItemKindMethod = { fg = cp.blue },
		CmpItemKindConstructor = { fg = cp.blue },
		CmpItemKindFunction = { fg = cp.blue },
		CmpItemKindFolder = { fg = cp.blue },
		CmpItemKindModule = { fg = cp.blue },
		CmpItemKindConstant = { fg = cp.orange },
		CmpItemKindField = { fg = cp.green },
		CmpItemKindProperty = { fg = cp.green },
		CmpItemKindEnum = { fg = cp.green },
		CmpItemKindUnit = { fg = cp.green },
		CmpItemKindClass = { fg = cp.yellow },
		CmpItemKindVariable = { fg = cp.purple },
		CmpItemKindFile = { fg = cp.blue },
		CmpItemKindInterface = { fg = cp.yellow },
		CmpItemKindColor = { fg = cp.red },
		CmpItemKindReference = { fg = cp.red },
		CmpItemKindEnumMember = { fg = cp.red },
		CmpItemKindStruct = { fg = cp.blue },
		CmpItemKindValue = { fg = cp.orange },
		CmpItemKindEvent = { fg = cp.blue },
		CmpItemKindOperator = { fg = cp.blue },
		CmpItemKindTypeParameter = { fg = cp.blue },
	}
end

return M
