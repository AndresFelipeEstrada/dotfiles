-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.swapfile = false

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

vim.diagnostic.config({
  float = { border = "rounded" },
})
