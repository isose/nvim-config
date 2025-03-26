return {
  {
    'saghen/blink.cmp',
    event = { "InsertEnter" },
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '*',

    opts = {
      keymap = { preset = 'default' },
      cmdline = { enabled = false },
      signature = { enabled = true },
      appearance = {
        nerd_font_variant = 'mono'
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
    },
  }
}
