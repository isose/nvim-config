return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  event = { "BufReadPost" },
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
      },
      scope = {
        show_start = false,
        show_end = false,
      },
    })
  end,
}
