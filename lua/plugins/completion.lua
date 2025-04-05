return {
  {
    'saghen/blink.cmp',
    event = { "BufReadPost" },
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '*',

    opts = {
      keymap = {
        preset = 'default',
        ["<C-n>"] = { "select_next", "snippet_forward", "fallback" },
        ["<C-p>"] = { "select_prev", "snippet_backward", "fallback" },
      },
      cmdline = { enabled = false },
      signature = { enabled = true },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 250,
        },
      },
      appearance = {
        nerd_font_variant = 'mono'
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
    },
  }
}
