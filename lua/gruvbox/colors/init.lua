local function get_colors(bg, config)
   bg = bg or "dark"

   local variant = config.variant
   local gruvbox = require("gruvbox.colors." .. variant)
   local colors = {}

   if bg == "dark" then
      colors = {
         bg1 = gruvbox.dark1,
         bg2 = gruvbox.dark2,
         bg3 = gruvbox.dark3,
         bg4 = gruvbox.dark4,
         fg0 = gruvbox.light0,
         fg0_h = gruvbox.light0_hard,
         fg0_s = gruvbox.light0_soft,
         fg1 = gruvbox.light1,
         fg2 = gruvbox.light2,
         fg3 = gruvbox.light3,
         fg4 = gruvbox.light4,
         red = gruvbox.bright_red,
         green = gruvbox.bright_green,
         yellow = gruvbox.bright_yellow,
         blue = gruvbox.bright_blue,
         purple = gruvbox.bright_purple,
         aqua = gruvbox.bright_aqua,
         orange = gruvbox.bright_orange,
         gray = gruvbox.bright_gray,
         red_a = gruvbox.neutral_red,
         green_a = gruvbox.neutral_green,
         yellow_a = gruvbox.neutral_yellow,
         blue_a = gruvbox.neutral_blue,
         purple_a = gruvbox.neutral_purple,
         aqua_a = gruvbox.neutral_aqua,
         orange_a = gruvbox.neutral_orange,
         gray_a = gruvbox.neutral_gray,
      }
      if config.contrast_dark == "hard" then
         colors.bg0 = gruvbox.dark0_hard
      elseif config.contrast_dark == "soft" then
         colors.bg0 = gruvbox.dark0_soft
      else
         colors.bg0 = gruvbox.dark0
      end
   else
      colors = {
         bg1 = gruvbox.light1,
         bg2 = gruvbox.light2,
         bg3 = gruvbox.light3,
         bg4 = gruvbox.light4,
         fg0 = gruvbox.dark0,
         fg0_h = gruvbox.dark0_hard,
         fg0_s = gruvbox.dark0_soft,
         fg1 = gruvbox.dark1,
         fg2 = gruvbox.dark2,
         fg3 = gruvbox.dark3,
         fg4 = gruvbox.dark4,
         red = gruvbox.faded_red,
         green = gruvbox.faded_green,
         yellow = gruvbox.faded_yellow,
         blue = gruvbox.faded_blue,
         purple = gruvbox.faded_purple,
         aqua = gruvbox.faded_aqua,
         orange = gruvbox.faded_orange,
         gray = gruvbox.faded_gray,
         red_a = gruvbox.neutral_red,
         green_a = gruvbox.neutral_green,
         yellow_a = gruvbox.neutral_yellow,
         blue_a = gruvbox.neutral_blue,
         purple_a = gruvbox.neutral_purple,
         aqua_a = gruvbox.neutral_aqua,
         orange_a = gruvbox.neutral_orange,
         gray_a = gruvbox.neutral_gray,
      }
      if config.contrast_light == "hard" then
         colors.bg0 = gruvbox.light0_hard
      elseif config.contrast_light == "soft" then
         colors.bg0 = gruvbox.light0_soft
      else
         colors.bg0 = gruvbox.light0
      end
   end

   return colors
end

return get_colors
