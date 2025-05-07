local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "gruvbox_day",
  light = true,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#282828", "#282828", "#282828", true),
  red     = Shade.new("#cc241d", "#9d0006", "#cc241d", true),
  green   = Shade.new("#98971a", "#79740e", "#98971a", true),
  yellow  = Shade.new("#d79921", "#b57614", "#d79921", true),
  blue    = Shade.new("#458588", "#076678", "#458588", true),
  magenta = Shade.new("#b16286", "#8f3f71", "#b16286", true),
  cyan    = Shade.new("#689d6a", "#8ec07c", "#689d6a", true),
  white   = Shade.new("#fbf1c7", "#fbf1c7", "#fbf1c7", true),
  orange  = Shade.new("#d65d0e", "#af3a03", "#d65d0e", true),
  pink    = Shade.new("#b16286", "#8f3f71", "#b16286", true),

  comment = "#7c6f64",

  bg0     = "#f2e5bc", -- Dark bg (status line and float)
  bg1     = "#fbf1c7", -- Default bg
  bg2     = "#ebdbb2", -- Lighter bg (colorcolm folds)
  bg3     = "#ebdbb2", -- Lighter bg (cursor line)
  bg4     = "#d5c4a1", -- Conceal, border fg
  bg5     = "#bdae93",
  bg6     = "#a89984",

  fg0     = "#282828", -- Lighter fg
  fg1     = "#3c3836", -- Default fg
  fg2     = "#504945", -- Darker fg (status line)
  fg3     = "#665c54", -- Darker fg (line numbers, fold colums)
  fg4     = "#7c6f64", -- Darker fg (line numbers, fold colums)

  sel0    = "#f2e5bc", -- Popup bg, visual selection bg
  sel1    = "#282828", -- Popup sel bg, search bg
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0, -- Dark bg (status line and float)
    bg1  = pal.bg1, -- Default bg
    bg2  = pal.bg2, -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3, -- Lighter bg (cursor line)
    bg4  = pal.fg3, -- Conceal, border fg

    fg0  = pal.fg0, -- Lighter fg
    fg1  = pal.fg1, -- Default fg
    fg2  = pal.fg2, -- Darker fg (status line)
    fg3  = pal.fg3, -- Darker fg (line numbers, fold colums)

    sel0 = pal.bg2, -- Popup bg, visual selection bg
    sel1 = pal.bg3, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,         -- Brackets and Punctuation
    builtin0    = pal.red.base,     -- Builtin variable
    builtin1    = pal.blue.dim,     -- Builtin type
    builtin2    = pal.orange.dim,   -- Builtin const
    builtin3    = pal.red.dim,      -- Not used
    comment     = pal.comment,      -- Comment
    conditional = pal.magenta.dim,  -- Conditional and loop
    const       = pal.orange.dim,   -- Constants, imports and booleans
    dep         = spec.fg3,         -- Deprecated
    field       = pal.blue.base,    -- Field
    func        = pal.green.dim,    -- Functions and Titles
    ident       = pal.cyan.base,    -- Identifiers
    keyword     = pal.cyan.base,    -- Keywords
    number      = pal.orange.base,  -- Numbers
    operator    = spec.fg2,         -- Operators
    preproc     = pal.red.base,     -- PreProc
    regex       = pal.yellow.dim,   -- Regex
    statement   = pal.magenta.base, -- Statements
    string      = pal.green.base,   -- Strings
    tag         = pal.cyan.base,
    type        = pal.yellow.base,  -- Types
    variable    = pal.black.base,   -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.3):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.3):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.3):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.3):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.3):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.base), 0.2):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.base), 0.2):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.base), 0.2):to_css(),
    text   = C(spec.bg1):blend(C(pal.blue.base), 0.4):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
