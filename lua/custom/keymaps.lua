---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>W"] = { "<cmd>noautocmd w<CR>", desc = "Save without formatting" },
          ["<Leader>i"] = { name = "Inserts" },
          ["<Leader>io"] = { "o<ESC>", desc = "Insert new line below" },
          ["<Leader>iO"] = { "O<ESC>", desc = "Insert new line above" },
        },
        v = {
          ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
          ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
        },
        t = {
          ["<Esc>"] = { "<C-\\><C-n>", desc = "Sair do modo terminal" },
        },
      },
    },
  },
}
