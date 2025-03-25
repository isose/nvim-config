return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '*',

    opts = {
      keymap = { preset = 'default' },
      cmdline = {
        enabled = false
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
