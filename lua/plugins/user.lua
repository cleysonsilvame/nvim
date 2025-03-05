if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
---@type LazySpec
return {
  {
    "mfussenegger/nvim-lint",
    config = function(_)
      require("lint").linters_by_ft = {
        python = { "pylint" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        callback = function()
          -- Timeout definido em milissegundos (ex.: 3000 ms = 3 segundos)
          require("lint").try_lint()
        end,
      })
    end,
  },
}
