# 📼 Gruvbox for Neovim

This is my port of the Gruvbox theme to Lua for Neovim, heavily inspired by themes like [Tokyonight.nvim](https://github.com/folke/tokyonight.nvim) and [Catppuccin](https://github.com/catppuccin/nvim). In particular I have borrowed their style of configuration, to make this theme easy to customise.

## ✨ Features

-   Allows overriding any highlight group, and adding new ones
-   Introspection of the current theme and highlights
-   Integrations with the following plugins:
    -   [Treesitter](https://github.com/tree-sitter/tree-sitter)
    -   [Native LSP](https://github.com/neovim/nvim-lspconfig)
    -   [Trouble](https://github.com/folke/trouble.nvim)
    -   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    -   [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    -   [Git signs](https://github.com/lewis6991/gitsigns.nvim)
    -   [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
    -   [WhichKey](https://github.com/folke/which-key.nvim)
    -   [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
    -   [Git Gutter](https://github.com/airblade/vim-gitgutter)
    -   [Hop](https://github.com/phaazon/hop.nvim)
    -   [Neogit](https://github.com/TimUntersberger/neogit)
    -   [Notify](https://github.com/rcarriga/nvim-notify)

I've only added config for the plugins I currently use. If you would like to add more, feel free to submit a PR!

## 📦 Installation

### Packer.nvim

```lua
use({ "kahnclusions/gruvbox.nvim" })
```

### vim-plug

```lua
Plug 'kahnclusions/gruvbox.nvim'
```

### Vundle

```lua
Plugin 'kahnclusions/gruvbox.nvim'
```

## 🚀 Usage

### Basic usage

#### init.lua

```lua
local catppuccin = require("gruvbox")

gruvbox.setup({ --[[ your settings here ]] })

vim.cmd[[colorscheme gruvbox]]
-- or
vim.cmd[[colorscheme materialbox]]
```

#### init.vim

```vim
lua << EOF
local catppuccin = require("gruvbox")

gruvbox.setup({ --[[ your settings here ]] })
EOF

colorscheme gruvbox
```

### Default settings

```lua
local gruvbox = require("gruvbox")

gruvbox.setup({
    transparent_background = false,
    term_colors = false,
    contrast_dark = "medium", -- "medium" | "hard" | "soft"
    contrast_light = "medium", -- "medium" | "hard" | "soft"
    styles = {
        comments = "italic",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
         enabled = true,
         virtual_text = {
            errors = "italic",
            hints = "italic",
            warnings = "italic",
            information = "italic",
         },
         underlines = {
            errors = "underline",
            hints = "underline",
            warnings = "underline",
            information = "underline",
         },
        },
        lsp_trouble = false,
        cmp = true,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
        },
        which_key = true,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        neogit = true,
        hop = true,
        notify = true,
    }
})

vim.cmd[[colorscheme gruvbox]]
```

### Accessing the loaded colors and theme

You can access the current color palette and theme (highlight groups) like so:

```lua
local gruvbox = require("gruvbox")

local colors = gruvbox.get_colors()
local theme = gruvbox.get_theme()
```

### Overriding highlight groups

You can easily override highlight groups, or set new ones for to style plugins that aren't supported yet. The above functions can give you access to the color palette and current highlight groups and inspect the current values.

```lua
local gruvbox = require("gruvbox")
local colors = gruvbox.get_colors()

gruvbox.remap({
    NormalFloat = { bg = colors.bg0, fg = colors.fg0 },
    FloatBorder = { bg = colors.bg0, fg = colors.red }
})

vim.cmd[[colorscheme gruvbox]]
```

## Credits

* Original color palette from [gruvbox](https://github.com/morhetz/gruvbox) by [@morhetz](https://github.com/morhetz)
* Material color palette from [gruvbox-material](https://github.com/sainnhe/gruvbox-material) by [@sainnhe](https://github.com/sainnhe)
* Based on the amazing themes [Tokyonight.nvim](https://github.com/folke/tokyonight.nvim) and [Catppuccin](https://github.com/catppuccin/nvim)
