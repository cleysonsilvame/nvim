function OpenTree()
  vim.cmd("Neotree")
end

function OpenHome()
  vim.api.nvim_feedkeys(" h", 't', true)
end

---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        autotree = {
          {
            event = "VimEnter",
            pattern = "*",
            command = "lua OpenTree()",
          },
        },

        autohome = {
          {
            event = "VimEnter",
            pattern = "*.*",
            command = "lua OpenHome()",
          },
        },
      }
    },
  },
}
