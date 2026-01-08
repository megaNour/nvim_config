vim.keymap.set("n", "<esc>", ":nohlsearch<CR>")
vim.keymap.set("n", "s", "")

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-w><C-h>", "<C-w>H", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-w><C-l>", "<C-w>L", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-w><C-j>", "<C-w>J", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-w><C-k>", "<C-w>K", { desc = "Move focus to the upper window" })

-- command mode mappings to jump
vim.keymap.set("c", "<M-Left>", "<S-Left>")
vim.keymap.set("c", "<M-b>", "<S-Left>") -- ghostty
vim.keymap.set("c", "<M-Down>", "<Home>")
vim.keymap.set("c", "<M-Up>", "<End>")
vim.keymap.set("c", "<M-Right>", "<S-Right>")
vim.keymap.set("c", "<M-f>", "<S-Right>") -- ghostty

vim.keymap.set({ "n", "x" }, "gy", ':let @+=@"<CR>', { desc = "Transfer anonymous register to outer clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Copy also to outer clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>d", '"_d', { desc = "Delete & discard" })
vim.keymap.set({ "n", "x" }, "<leader>c", '"_c', { desc = "Change & discard" })
vim.keymap.set({ "n", "x" }, "<leader>x", '"_x', { desc = "Delete & discard" })

-- previous next in location list
vim.keymap.set({ "n", "x" }, "<F8>", ":lpre<CR>zz")
vim.keymap.set({ "n", "x" }, "<F7>", ":lne<CR>zz")

-- scroll and search always centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- folding
vim.keymap.set("n", "<leader>z", function()
  -- Autofolding treesitter
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  vim.opt.foldenable = true --not vim.opt.foldenable
  vim.opt.foldlevel = 20
end)
