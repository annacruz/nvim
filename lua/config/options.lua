-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable spell check
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Asdf/mason
vim.env.PATH = table.concat({
  vim.fn.expand("$HOME/.asdf/shims"),
  vim.fn.expand("~/.local/share/nvim/mason/bin"),
  vim.env.PATH,
}, ":")
-- Highlight the 80th and 100th columns
vim.opt.colorcolumn = "80,100"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])
