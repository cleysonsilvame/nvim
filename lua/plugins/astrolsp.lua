-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      disabled = {
        "tsserver"
      }
    },
    config = {
      lua_ls = {
        settings = {
          Lua = {
            format = {
              enable = true,

              defaultConfig = {
                indent_size = "2",
                indent_style = "space",
              }
            },
            diagnostics = {
              disable = {
                "missing-fields"
              }
            }
          }
        }
      }
    }
  },
}
