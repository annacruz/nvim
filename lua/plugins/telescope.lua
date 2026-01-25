return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        defaults = {
          -- For live_grep, add these arguments to include hidden and ignored files
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden", -- include hidden files
            "--no-ignore-vcs", -- include .gitignore-d files
          },
        },
        pickers = {
          find_files = {
            hidden = true, -- include hidden files
            no_ignore = true, -- include ignored files
          },
        },
      })
    end,
  },
}
