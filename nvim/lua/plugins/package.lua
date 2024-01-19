return {
  {
    "vuki656/package-info.nvim",
    -- ft = "json",
    lazy = true,
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      local colors = require("lualine.themes.catppuccin-mocha")
      require("package-info").setup({
        package_manager = "npm",
        autostart = true,
        colors = {
          outdated = colors,
        },
        hide_up_to_date = true,
      })
    end,
  },
}
