local base = require("gruvbox.highlights.base")
local M = {}

local function get_integrations(cp, config)
   local integrations = config["integrations"]
   local final_integrations = {}

   for integration in pairs(integrations) do
      local cot = false
      if type(integrations[integration]) == "table" then
         if integrations[integration]["enabled"] == true then
            cot = true
         end
      else
         if integrations[integration] == true then
            cot = true
         end
      end

      if cot then
         final_integrations = vim.tbl_deep_extend(
            "force",
            final_integrations,
            require("gruvbox.highlights.integrations." .. integration).get(cp, config)
         )
      end
   end

   final_integrations = vim.tbl_deep_extend(
      "force",
      final_integrations,
      require("catppuccin.core.remaps").get_hig_remaps() or {}
   )
   return final_integrations
end

function M.apply(cp, config)
   local theme = {}
   theme.base = base.get(cp, config)
   theme.integrations = get_integrations(cp, config)
   return theme
end

return M
