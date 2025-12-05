vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight at yank",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
