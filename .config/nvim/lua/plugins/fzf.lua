return {
  {
        "ibhagwan/fzf-lua",
        event = "VeryLazy",
        -- TODO: check optional icon dependency
        config = function()
            require("fzf-lua").setup({})
            vim.keymap.set("n", "<C-p>", [[<Cmd>lua require"fzf-lua".live_grep_resume()<CR>]], {})
            vim.keymap.set("n", "<C-g>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
        end
  }
}
