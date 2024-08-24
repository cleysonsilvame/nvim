-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        autotree = {
          {
            event = "UIEnter",
            pattern = "*",
            once = true,

            callback = function()
              -- open tree
              vim.api.nvim_feedkeys(" o", 't', true)

              -- unhides files
              vim.api.nvim_feedkeys("H", 't', true)

              -- back to buffer
              vim.api.nvim_feedkeys(" o", 't', true)
            end
          },
        },
      }
    },
  },
}
