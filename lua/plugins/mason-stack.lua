return {
  {
    "mason-org/mason.nvim",
    version = false,
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = false,
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      { "neovim/nvim-lspconfig", version = false },
    },
  },
  {
    "neovim/nvim-lspconfig",
    version = false,
  },
}
