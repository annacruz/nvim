-- return {
--   {
--     "nvim-telescope/telescope.nvim",
--     config = function()
--       require("telescope").setup({
--         defaults = {
--           -- For live_grep, add these arguments to include hidden and ignored files
--           vimgrep_arguments = {
--             "rg",
--             "--color=never",
--             "--no-heading",
--             "--with-filename",
--             "--line-number",
--             "--column",
--             "--smart-case",
--             "--hidden", -- include hidden files
--             "--no-ignore-vcs", -- include .gitignore-d files
--           },
--         },
--         pickers = {
--           find_files = {
--             hidden = true, -- include hidden files
--             no_ignore = true, -- include ignored files
--           },
--         },
--       })
--     end,
--   },
-- }
return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--no-ignore-vcs",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
      },
    },
    keys = {
      -- Force <leader><leader> to use find_files with hidden and ignored files
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").find_files({
            hidden = true,
            no_ignore = true,
          })
        end,
        desc = "Find All Files (Root Dir)",
      },
    },
  },
}
