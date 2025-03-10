return {
  "amitds1997/remote-nvim.nvim",
  version = "0.3.8",                 -- Pin to GitHub releases
  dependencies = {
    "nvim-lua/plenary.nvim",         -- For standard functions
    "MunifTanjim/nui.nvim",          -- To build the plugin UI
    "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
  },
  config = {
    offline_mode = {
      enabled = true,
      no_github = false,
    }
  }
}
