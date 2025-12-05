return { -- Autoformat
  "stevearc/conform.nvim",
  -- enabled=false,
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      css = { "prettier" },
      json = { "jq" },
      lua = { "stylua" },
      markdown = { "mdformat" },
      python = { "ruff_format" },
      sh = { "shfmt" },
      toml = { "taplo" },
      xml = { "xmlformat" },
      yaml = { "prettier" },
      zig = { "zigfmt" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      xmlformat = { command = "xmlformat", prepend_args = { "--selfclose", "--blanks" } },
      -- markdown = { command = 'mdformat', prepend_args = { '--wrap', '80' } },
      -- pandoc = { command = 'pandoc', prepend_args = { '-f', 'markdown', '-t', 'gfm' } },
      jq = { command = "jq" },
    },
  },
}
