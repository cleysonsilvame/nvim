---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    config = {
      vtsls = {
        settings = {
          typescript = {
            tsserver = {
              pluginPaths = {
                "./node_modules"
              }
            }
          }
        }
      }
    }
  },
}
