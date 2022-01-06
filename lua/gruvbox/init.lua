local config = require("gruvbox.config")
local get_colors = require("gruvbox.colors")
local theme = require("gruvbox.theme")
local utils = require("gruvbox.utils")

local M = {}

local function get_bg()
   local bg = vim.o.background
   if bg == nil then
      bg = "dark"
      vim.o.background = bg
   end
   return bg
end

function M.load(variant)
   local colors = get_colors(get_bg(), config.options)
   utils.load(theme.apply(colors, config.options))
end

function M.remap(hi_groups)
   hi_groups = hi_groups or {}
   require("gruvbox.remaps").set_hig_remaps(hi_groups)
end

function M.get_colors(variant)
   variant = variant or "classic"
   local colors = get_colors(get_bg(), config.options)
   return colors
end

function M.get_theme(variant)
   local colors = get_colors(get_bg(), config.options)
   return theme.apply(colors, config.options)
end

---@param custom_options table Configuration overrides
function M.setup(custom_options)
   require("gruvbox.config").set_options(custom_options)
end

return M
