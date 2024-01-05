return {
  {
    "folke/which-key.nvim",
    opts = {
      toggler = {
        line = "gcc",
        block = "gbc",
      },
      defaults = {
        ["<leader>cp"] = { name = "+packages" },
      },
    },
  },
}
