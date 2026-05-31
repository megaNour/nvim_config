return {
    "https://github.com/nvim-tree/nvim-tree.lua",
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- -- optionally enable 24-bit colour
        -- vim.opt.termguicolors = true

        vim.keymap.set("n", "<leader>tt", function()
            vim.cmd("NvimTreeToggle")
        end, { desc = "nvim [T]ree" })
    end,
}
