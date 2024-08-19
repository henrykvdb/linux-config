
-------------------
---- KEYBINDS -----
-------------------


-- Clear / search highlighting bind
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic quickfix window keymap
vim.keymap.set('n', '<leader>d', vim.diagnostic.setloclist, { desc = 'Open diagnostic list' })
