return {
  { -- Linting
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
      local props = require("props"):readModule()
      lint.linters.markdownlint.cmd = (props and props.markdownlint) or lint.linters.markdownlint.cmd
      table.insert(lint.linters.shellcheck.args, 1, "-x")
      lint.linters_by_ft = {
        markdown = { "markdownlint" },
        sh = { "shellcheck" },
        terraform = { "tflint" },
        -- python = { 'dmypy' },
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function(opts)
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
