local common_imports = {
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.sql" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
}

local vscode_imports = {
  { import = "astrocommunity.recipes.vscode" },
}

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  tag = "stable",
  pin = true,

  -- Mesclar imports dependendo do ambiente
  unpack(vim.g.vscode and vscode_imports or common_imports),
}
