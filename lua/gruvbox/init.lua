local config = require("gruvbox.config")
local get_colors = require("gruvbox.colors")
local theme = require("gruvbox.theme")
local utils = require("gruvbox.utils")

local M = {}

function M.load()
   local colors = get_colors(config.options)
   utils.load(theme.apply(colors, config.options))
end

function M.remap(hi_groups)
   hi_groups = hi_groups or {}
   require("gruvbox.remaps").set_hig_remaps(hi_groups)
end

function M.get_colors()
   local colors = {
      gruvbox = get_colors(config.options, "classic"),
      materialbox = get_colors(config.options, "material"),
   }
   return colors
end

function M.get_theme()
   local themes = {
      gruvbox = theme.apply(get_colors(config.options, "classic"), config.options),
      materialbox = theme.apply(get_colors(config.options, "material"), config.options),
   }
   return themes
end

---@param custom_options table Configuration overrides
function M.setup(custom_options)
   require("gruvbox.config").set_options(custom_options)
end

return M
