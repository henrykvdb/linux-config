return {
  {
        "airblade/vim-gitgutter",
        event = "VeryLazy",
        config = function()
            -- Document/rebind plugin keys
            vim.g.gitgutter_map_keys = 0 -- disable plugin binds
            vim.keymap.set("n", "]c", "<Plug>(GitGutterNextHunk)", {desc = "Next Change" })
            vim.keymap.set("n", "[c", "<Plug>(GitGutterPrevHunk)", {desc = "Prev Change" })
            vim.keymap.set("n", "<leader>gp", "<Plug>(GitGutterPreviewHunk)", {desc = "Preview Change" })
            vim.keymap.set("n", "<leader>ga", "<Plug>(GitGutterStageHunk)", {desc = "Stage Change" })
            vim.keymap.set("n", "<leader>gu", "<Plug>(GitGutterUndoHunk)", {desc = "Undo Change" })
        end
  },
  {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {desc = "Open staging view"})

            --local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})
            --local autocmd = vim.api.nvim_create_autocmd
            --autocmd("BufWinEnter", {
            --    group = ThePrimeagen_Fugitive,
            --    pattern = "*",
            --    callback = function()
            --        if vim.bo.ft ~= "fugitive" then
            --            return
            --        end
            --
            --        local bufnr = vim.api.nvim_get_current_buf()
            --        local opts = {buffer = bufnr, remap = false}
            --        vim.keymap.set("n", "<leader>p", function()
            --            vim.cmd.Git('push')
            --        end, opts)
            --
            --        -- rebase always
            --        vim.keymap.set("n", "<leader>P", function()
            --            vim.cmd.Git({'pull',  '--rebase'})
            --        end, opts)
            --
            --        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
            --        -- needed if i did not set the branch up correctly
            --        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
            --    end,
            --})


            --vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
            --vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
        end
  }
}
