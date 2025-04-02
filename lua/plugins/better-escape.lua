return {
  {
    "max397574/better-escape.nvim",
    event = { "InsertEnter" },
    config = function()
      require("better_escape").setup({
        default_mappings = false,
        mappings = {
          i = {
            -- keymap ;; to insert ; at end of line
            [";"] = {
              [";"] = "<C-o>A;",
            },
            -- keymap ,, to insert , at end of line
            [","] = {
              [","] = "<C-o>A,",
            },
          },
        },
      })
    end,
  }
}
