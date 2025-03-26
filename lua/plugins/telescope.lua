return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    keys = {
      { "<Leader>ff", function() require("telescope.builtin").find_files() end },
      { "<Leader>fb", function() require("telescope.builtin").buffers() end },
      { "<Leader>fh", function() require("telescope.builtin").help_tags() end },
      { "<Leader>en", function() require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") }) end, desc = "find files in config" },
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
      require("config.telescope.multigrep").setup()
    end,
  },
}
