local util = require("gruvbox.utils")
local M = {}

function M.get(cp)
	return {
      DapUIFloatBorder = { fg = cp.blue },
      debugPC = { bg = util.darken(cp.yellow, 0.25, cp.bg1) },
      DebugBreakpoint = { fg = cp.red },
      DebugBreakpointConditional = { fg = cp.cyan },
      DebugBreakpointRejected = { fg = cp.gray1 },
	}
end

return M
