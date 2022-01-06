local config = {}

config.options = {
   transparent_background = false,
   term_colors = false,
   contrast_dark = "medium",
   contrast_light = "medium",
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
   },
}

function config.set_options(opts)
   opts = opts or {}
   config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
