return {
    "stevearc/oil.nvim",
    config = function()
        vim.keymap.set("n", "<leader>to", function()
            vim.cmd("Oil")
        end, { desc = "[O]il" })
    end,
}
