vim.keymap.set("n", "<leader>o", function()
  vim.cmd("Oil")
end, { desc = "Oil" })
return { "stevearc/oil.nvim" }
