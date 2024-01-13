return {
  {
    "vuki656/package-info.nvim",
    -- ft = "json",
    lazy = true,
    on = "package.json",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      local colors = require("lualine.themes.gruvbox_dark")

      require("package-info").setup({
        package_manager = "npm",
        colors = {
          outdated = colors,
        },
        hide_up_to_date = true,
      })
    end,
  },
}
