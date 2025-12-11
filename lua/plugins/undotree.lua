vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_WindowLayout = 2
vim.g.undotree_DiffpanelHeight = 15

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

return { "mbbill/undotree" }
