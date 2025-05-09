return {
  {
    "saghen/blink.cmp",
    event = { "BufReadPost" },
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "1.*",

    opts = {
      keymap = {
        preset = "super-tab",
        ["<C-n>"] = { "select_next", "snippet_forward", "fallback" },
        ["<C-p>"] = { "select_prev", "snippet_backward", "fallback" },
      },

      appearance = {
        nerd_font_variant = "mono"
      },

      signature = { enabled = true },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 250,
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
    },
    opts_extend = { "sources.default" }
  }
}
