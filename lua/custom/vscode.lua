if not vim.g.vscode then return {} end

local vscode = require "vscode-neovim"

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        custom_mappings = {
          {
            event = "VimEnter",
            desc = "Aplicar remapeamento de j e k após AstroNvim carregar",
            callback = function()
              vim.cmd "nmap j gj"
              vim.cmd "nmap k gk"
            end,
          },
        },
      },
      options = {
        opt = {
          cmdheight = 1,
          foldenable = true,
        },
      },
      mappings = {
        n = {
          -- Actions
          ["<leader>lA"] = function() vscode.action "editor.action.sourceAction" end,
          ["<leader>bc"] = "<Cmd>Tabonly<CR>",

          -- Fold
          ["za"] = function() vscode.action "editor.toggleFold" end,
          ["j"] = nil,
          ["k"] = nil,

          -- GIT
          ["<leader>gd"] = function() vscode.action "editor.action.dirtydiff.next" end,
          ["<leader>go"] = function() vscode.action "git.openChange" end,
          ["<leader>gr"] = function() vscode.action "git.revertSelectedRanges" end,
          ["<leader>gs"] = function() vscode.action "git.stageSelectedRanges" end,
          ["<leader>gu"] = function() vscode.action "git.unstageSelectedRanges" end,
          ["]g"] = function() vscode.action "workbench.action.editor.nextChange" end,
          ["[g"] = function() vscode.action "workbench.action.editor.previousChange" end,
        },

        v = {
          -- GIT
          ["<leader>gd"] = function() vscode.action "editor.action.dirtydiff.next" end,
          ["<leader>go"] = function() vscode.action "git.openChange" end,
          ["<leader>gr"] = function() vscode.action "git.revertSelectedRanges" end,
          ["<leader>gs"] = function() vscode.action "git.stageSelectedRanges" end,
          ["<leader>gu"] = function() vscode.action "git.unstageSelectedRanges" end,
          ["]g"] = function() vscode.action "workbench.action.editor.nextChange" end,
          ["[g"] = function() vscode.action "workbench.action.editor.previousChange" end,

          -- ["<C-D>"] = function()
          --   vscode.with_insert(function() vscode.action "editor.action.addSelectionToNextFindMatch" end)
          -- end,
        },

        i = {
          ["<C-d>"] = function()
            vscode.with_insert(function() vscode.action "editor.action.addSelectionToNextFindMatch" end)
          end,
        },
      },
    },
  },
}
