return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy"
          }
        },
        extensions = {
          fzf = {}
        }
      })

      require("telescope").load_extension("fzf")

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<Leader>ff", builtin.find_files)
      vim.keymap.set("n", "<Leader>fb", builtin.buffers)
      vim.keymap.set("n", "<Leader>fh", builtin.help_tags)
      -- find files in config
      vim.keymap.set("n", "<Leader>en", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end)

      require("config.telescope.multigrep").setup()
    end,
  },
}
