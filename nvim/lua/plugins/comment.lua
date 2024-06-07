return {
  "numToStr/Comment.nvim",
  opts = {
    toggler = {
      ---Line-comment toggle keymap
      line = "<leader>/",
      ---Block-comment toggle keymap
      block = "gbc",
    },
    opleader = {
      line = "<leader>/",
    },
  },
  keys = {
    { "gcc", false },
    { "gc", false },
  },
  lazy = false,
}
