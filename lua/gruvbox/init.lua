local config = require("gruvbox.config")
local colors = require("gruvbox.colors")
local highlights = require("gruvbox.highlights")
local utils = require("gruvbox.utils.util")

local M = {}

function M.load()
   local theme = highlights.apply(colors, config.options)
   utils.load(theme)
end

return M
