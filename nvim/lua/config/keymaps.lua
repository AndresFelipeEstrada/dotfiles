-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local set_keymap = vim.api.nvim_set_keymap

vim.keymap.set("n", "<leader>\\", ":vsplit<cr>", opts)
vim.keymap.set("n", "<leader>-", ":split<cr>", opts)
vim.keymap.set("n", "dp", ":normal daw<cr>", opts)
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("i", "qq", "<Esc>", opts)
set_keymap("n", "<leader>bm", ":b#<cr>", { noremap = true, silent = true, desc = "ir al ultimo buffer" })

--Diagnostics
vim.keymap.set("n", "<C-e>", function()
  vim.diagnostic.goto_next()
end, opts)

-- package-info keymaps
set_keymap(
  "n",
  "<leader>cpt",
  "<cmd>lua require('package-info').toggle()<cr>",
  { silent = true, noremap = true, desc = "Toggle" }
)
set_keymap(
  "n",
  "<leader>cpd",
  "<cmd>lua require('package-info').delete()<cr>",
  { silent = true, noremap = true, desc = "Delete package" }
)
set_keymap(
  "n",
  "<leader>cpu",
  "<cmd>lua require('package-info').update()<cr>",
  { silent = true, noremap = true, desc = "Update package" }
)
set_keymap(
  "n",
  "<leader>cpi",
  "<cmd>lua require('package-info').install()<cr>",
  { silent = true, noremap = true, desc = "Install package" }
)
set_keymap(
  "n",
  "<leader>cpc",
  "<cmd>lua require('package-info').change_version()<cr>",
  { silent = true, noremap = true, desc = "Change package version" }
)

--Delete line
function DeleteLinesWithPattern()
  local pattern = vim.fn.input("Ingrese el patrón de búsqueda: ")
  vim.cmd("execute 'g/' . escape('" .. pattern .. "', '/') . '/d'")
end

--Delete only word
function DeleteWordWithPattern()
  local pattern = vim.fn.input("Ingrese el patrón de búsqueda: ")
  vim.cmd("execute '%s/' . escape('" .. pattern .. "', '/') . '/'")
end
vim.api.nvim_set_keymap(
  "n",
  "<Leader>dl",
  ":lua DeleteLinesWithPattern()<CR>",
  { noremap = true, silent = true, desc = "Borrar linea entera" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>dd",
  ":lua DeleteWordWithPattern()<CR>",
  { noremap = true, silent = true, desc = "Borrar solo palabra" }
)
