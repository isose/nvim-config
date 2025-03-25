return {
  {
    "echasnovski/mini.nvim",
    verion = false,
    config = function()
      require("mini.icons").setup()
      require("mini.pairs").setup()
      require("mini.surround").setup()
      require("mini.files").setup()
    end,

    -- toggle open at current directory
    vim.keymap.set("n", "-", function()
      if not MiniFiles.close() then
        MiniFiles.open(vim.api.nvim_buf_get_name(0))
      end
    end)
  },
}
