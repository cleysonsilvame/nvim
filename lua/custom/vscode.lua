if not vim.g.vscode then return {} end 

-- Remove key mapping <C-d>
--
local vscode = require("vscode-neovim")

local function moveCursor(direction)
    if vim.v.count == 0 and vim.fn.reg_recording() == "" and vim.fn.reg_executing() == "" then
        if direction == "j" or direction == "k" then
            -- Aciona o comando do VSCode para alternar fold
            vim.fn.VSCodeNotify("editor.toggleFold")
        end
        -- Move o cursor para a próxima linha
        vim.api.nvim_feedkeys(direction, "n", true)
    else
        vim.api.nvim_feedkeys(direction, "n", true)
    end
end

return {

  {
    -- "dgokcin/fast-cursor-move.nvim",
    -- event = "BufRead",
    -- vscode = true,
    -- config = function()
    --     vim.defer_fn(function()
    --         require("fast-cursor-move").setup({
    --             enable_acceleration = false,
    --         })
    --     end, 500)
    -- end,
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = { 
          cmdheight=1,
          -- foldmethod="manual"
          foldenable=true
        },
      },
      mappings = {
        n = {
          -- Actions
          ["<leader>lA"] = function() vscode.action "editor.action.sourceAction" end,
          ["<leader>bc"] = "<Cmd>Tabonly<CR>",

          -- Fold
          ["za"]  = function() vscode.action "editor.toggleFold" end,
          -- ["j"] = function() moveCursor('j') end,

          -- GIT
          ["<leader>gd"]  = function() vscode.action "editor.action.dirtydiff.next" end,
          ["<leader>go"]  = function() vscode.action "git.openChange" end,
          ["<leader>gr"]  = function() vscode.action "git.revertSelectedRanges" end,
          ["<leader>gs"]  = function() vscode.action "git.stageSelectedRanges" end,
          ["<leader>gu"]  = function() vscode.action "git.unstageSelectedRanges" end,
          ["]g"]  = function() vscode.action "workbench.action.editor.nextChange" end,
          ["[g"]  = function() vscode.action "workbench.action.editor.previousChange" end,
        },

        v = {
          -- GIT
          ["<leader>gd"]  = function() vscode.action "editor.action.dirtydiff.next" end,
          ["<leader>go"]  = function() vscode.action "git.openChange" end,
          ["<leader>gr"]  = function() vscode.action "git.revertSelectedRanges" end,
          ["<leader>gs"]  = function() vscode.action "git.stageSelectedRanges" end,
          ["<leader>gu"]  = function() vscode.action "git.unstageSelectedRanges" end,
          ["]g"]  = function() vscode.action "workbench.action.editor.nextChange" end,
          ["[g"]  = function() vscode.action "workbench.action.editor.previousChange" end,
        },
      },
    },
  },

}
