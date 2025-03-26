return {
  {
    "echasnovski/mini.nvim",
    version = false,
    event = { "InsertEnter" },
    keys = {
      {
        "-",
        function()
          if not require("mini.files").close() then
            require("mini.files").open(vim.api.nvim_buf_get_name(0))
          end
        end,
        desc = "toggle open at current directory",
      }
    },
    config = function()
      require("mini.icons").setup()
      require("mini.pairs").setup()
      require("mini.surround").setup()
      require("mini.files").setup()
    end,
  },
}
