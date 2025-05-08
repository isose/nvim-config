return {
  {
    "mason-org/mason.nvim",
    version = "1.11.0", -- pin version remove later
    cmd = { "Mason" },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "1.32.0", -- pin version remove later
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  },
}
