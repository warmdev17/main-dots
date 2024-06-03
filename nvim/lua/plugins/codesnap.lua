return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  event = "VeryLazy",
  keys = {
    { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures/codesnap" },
  },
  opts = {
    save_path = "~/Pictures/codesnap",
    has_breadcrumbs = true,
    breadcrumbs_separator = "  ",
    bg_theme = "grape",
    watermark = "warmdev",
    mac_window_bar = true,
    code_font_family = "JetBrainsMono NF",
  },
}
