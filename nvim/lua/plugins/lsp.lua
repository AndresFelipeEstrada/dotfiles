return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {
        "folke/neoconf.nvim",
        cmd = "Neoconf",
        confi = false,
        dependencies = { "nvim-lspconfig" },
      },
      { "folke/neodev.nvim", opts = {} },
      "williamboman/mason-lspconfig.nvim",
      {
        "hrsh7th/cmp-nvim-lsp",
        event = "InsertEnter",
        dependencies = {
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-nvim-lua",
          "hrsh7th/cmp-git",
          {
            "L3MON4D3/LuaSnip",
            after = "nvim-cmp",
            config = function()
              require("config.snippets")
            end,
          },
          "saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets",
          "windwp/nvim-autopairs",
        },
      },
    },
  },
}
