---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = false,
      disabled = {
        "tsserver"
      }
    },
  },
}
