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
              vim.api.nvim_feedkeys(" o", 't', true)
              vim.api.nvim_feedkeys(" o", 't', true)
            end
          },
        },
        --
        -- autohome = {
        --   {
        --     event = "VimEnter",
        --     pattern = "*.*",
        --     command = "lua OpenHome()",
        --   },
        -- },
      }
    },
  },
}
