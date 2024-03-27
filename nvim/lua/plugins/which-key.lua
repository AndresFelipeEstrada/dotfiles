return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
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
