local M = {}

function M.get(cp, config)
   cp.none = "NONE"

   return {
      Comment = { fg = cp.gray, style = config.styles.comments }, -- just comments
      ColorColumn = { bg = cp.gray2 }, -- used for the columns set with 'colorcolumn'
      Conceal = { fg = cp.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
      Cursor = { fg = cp.bg2, bg = cp.fg }, -- character under the cursor
      lCursor = { fg = cp.bg2, bg = cp.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
      CursorIM = { fg = cp.bg2, bg = cp.fg }, -- like Cursor, but used when in IME mode |CursorIM|
      CursorColumn = { bg = cp.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
      CursorLine = { bg = cp.bg1 }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
      Directory = { fg = cp.blue }, -- directory names (and other special names in listings)
      EndOfBuffer = { fg = cp.bg2 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
      ErrorMsg = { fg = cp.red, style = "bold,italic" }, -- error messages on the command line
      VertSplit = { fg = cp.bg2 }, -- the column separating vertically split windows
      Folded = { fg = cp.blue, bg = cp.bg4 }, -- line used for closed folds
      FoldColumn = { bg = cp.bg2, fg = cp.gray }, -- 'foldcolumn'
      SignColumn = { bg = config.transparent_background and cp.none or cp.bg0, fg = cp.bg4 }, -- column where |signs| are displayed
      SignColumnSB = { bg = cp.bg0, fg = cp.bg4 }, -- column where |signs| are displayed
      Substitute = { bg = cp.bg4, fg = cp.pink }, -- |:substitute| replacement text highlighting
      LineNr = { fg = cp.bg4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
      CursorLineNr = { fg = cp.green }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
      MatchParen = { fg = cp.purple_a, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
      ModeMsg = { fg = cp.fg0, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
      MsgArea = { fg = cp.fg }, -- Area for messages and cmdline
      MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
      MoreMsg = { fg = cp.blue }, -- |more-prompt|
      NonText = { fg = cp.gray }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
      Normal = { fg = cp.fg0, bg = config.transparent_background and cp.none or cp.bg0 }, -- normal text
      NormalNC = { fg = cp.fg0, bg = config.transparent_background and cp.none or cp.bg0 }, -- normal text in non-current windows
      NormalSB = { fg = cp.fg0, bg = cp.bg0 }, -- normal text in non-current windows
      NormalFloat = { fg = cp.fg0, bg = cp.bg1 }, -- Normal text in floating windows.
      FloatBorder = { fg = cp.blue },
      Pmenu = { bg = cp.bg3, fg = cp.gray2 }, -- Popup menu: normal item.
      PmenuSel = { fg = cp.fg0, bg = cp.bg4, style = "bold" }, -- Popup menu: selected item.
      PmenuSbar = { bg = cp.bg4 }, -- Popup menu: scrollbar.
      PmenuThumb = { bg = cp.gray }, -- Popup menu: Thumb of the scrollbar.
      Question = { fg = cp.blue }, -- |hit-enter| prompt and yes/no questions
      QuickFixLine = { bg = cp.bg4, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      Search = { bg = cp.yellow, fg = cp.bg0, style = "bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
      IncSearch = { bg = cp.pink, fg = cp.bg4 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
      SpecialKey = { fg = cp.fg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
      SpellBad = { sp = cp.red, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
      SpellCap = { sp = cp.yellow, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
      SpellLocal = { sp = cp.blue, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
      SpellRare = { sp = cp.green, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
      StatusLine = { fg = cp.fg0, bg = cp.bg1 }, -- status line of current window
      StatusLineNC = { fg = cp.bg4, bg = cp.bg1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
      TabLine = { bg = cp.bg1, fg = cp.bg4 }, -- tab pages line, not active tab page label
      TabLineFill = { bg = cp.bg }, -- tab pages line, where there are no labels
      TabLineSel = { fg = cp.green, bg = cp.bg4 }, -- tab pages line, active tab page label
      Title = { fg = cp.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
      Visual = { bg = cp.bg4, style = "bold" }, -- Visual mode selection
      VisualNOS = { bg = cp.bg4, style = "bold" }, -- Visual mode selection when vim is "Not Owning the Selection".
      WarningMsg = { fg = cp.yellow }, -- warning messages
      fgspace = { fg = cp.bg4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
      WildMenu = { bg = cp.gray }, -- current match in 'wildmenu' completion

      Statement = { fg = cp.red },
      Conditional = { fg = cp.red },
      Repeat = { fg = cp.red },
      Label = { fg = cp.red },
      Exception = { fg = cp.red },
      Operator = { fg = cp.fg1 },
      Keyword = { fg = cp.red },

      Identifier = { fg = cp.blue },
      Function = { fg = cp.green },

      PreProc = { fg = cp.aqua },
      Include = { fg = cp.aqua },
      Define = { fg = cp.aqua },
      Macro = { fg = cp.aqua },
      PreCondit = { fg = cp.aqua },

      Constant = { fg = cp.purple },
      Character = { fg = cp.purple },
      Boolean = { fg = cp.purple },
      Number = { fg = cp.purple },
      Float = { fg = cp.purple },
      String = { fg = cp.green },

      Type = { fg = cp.yellow },
      StorageClass = { fg = cp.orange },
      Structure = { fg = cp.aqua },
      Typedef = { fg = cp.yellow },
      SpecialChar = { fg = cp.red },
   }
end

return M
