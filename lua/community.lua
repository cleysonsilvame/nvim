---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.sql" },
  -- { import = "astrocommunity.programming-language-support.rest-nvim" },
}
