return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      direction = "float",
      open_mapping = "<C-w>/",
      start_in_insert = true,
      auto_scroll = true,
      shade_terminals = false,
      shell = "fish",
      float_opts = {
        border = "curved",
        highlights = {
          background = "#002c38",
        },
      },
    },
  },
}
