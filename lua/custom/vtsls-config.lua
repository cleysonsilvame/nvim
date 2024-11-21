---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = function(_, opts)
    opts.config.vtsls = vim.tbl_deep_extend("force", opts.config.vtsls or {}, {
      settings = {
        typescript = {
          tsserver = {
            pluginPaths = {
              "./node_modules"
            }
          }
        }
      }
    })
  end,
}
