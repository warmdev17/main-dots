return {
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({
      exclude = { "javascript" },
    })
  end,
}
