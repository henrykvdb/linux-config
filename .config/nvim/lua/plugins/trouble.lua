return {
    {
        "folke/trouble.nvim",
        event = "VeryLazy",
        config = function()
            require("trouble").setup({
            --    icons = false,
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle({mode="diagnostics"})
            end, { desc = "Trouble toggle"})

            vim.keymap.set("n", "[t", function()
                require("trouble").previous({mode="diagnostics"});
                require("trouble").jump_only({mode="diagnostics"});
            end, { desc = "Trouble previous"})

            vim.keymap.set("n", "]t", function()
                require("trouble").next({mode="diagnostics"});
                require("trouble").jump_only({mode="diagnostics"});
            end, { desc = "Trouble next"})
        end
    },
}
