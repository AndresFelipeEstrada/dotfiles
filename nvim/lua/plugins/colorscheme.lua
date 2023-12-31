return {
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- lazy = true,
  -- priority = 1000,
  -- config = function()
  --   require("catppuccin").setup({
  --     transparent_background = true,
  --   })
  --   vim.cmd.colorscheme("catppuccin-mocha")
  -- end,
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        -- transparent_mode = true,
      })
    end,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      background = "dark",
    },
  },
}
