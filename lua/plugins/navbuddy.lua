return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
        "neovim/nvim-lspconfig",
      },
    },
  },
  event = "LSPAttach",
  config = {
    lsp = {
      auto_attach = true,
    },
  },
  keys = {
    { "<leader>j", "<cmd>Navbuddy<CR>", desc = "Navbuddy" },
  },
}
