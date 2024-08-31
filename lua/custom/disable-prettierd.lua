return {
  "jay-babu/mason-null-ls.nvim",
  opts = function(_, opts)
    opts.ensure_installed = vim.tbl_filter(function(tool)
      return tool ~= "prettierd"
    end, opts.ensure_installed or {})

    opts.handlers.prettierd = function(source_name, methods)
    end
  end,
}
