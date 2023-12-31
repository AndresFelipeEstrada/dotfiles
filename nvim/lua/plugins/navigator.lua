return {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",
  keys = {

    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Got to the left pane" },

    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Got to the down pane" },

    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Got to the up pane" },

    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Got to the right pane" },
  },
}
