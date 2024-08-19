-------------------
-- Configuration --
-------------------

-- Visuals
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 4
vim.opt.showcmd = true -- Show incomplete commands while typing

vim.opt.wrap = true -- Wrap lines
vim.opt.wrapmargin = 2 -- Stay 2 chars from side

vim.opt.mouse = 'a' -- Enable mouse mode, e.g. for resizing splits
vim.opt.splitright = true -- Open new splits to right

vim.opt.fixendofline = true -- Add EOL when missing

-- Searching and substitute
vim.opt.ignorecase = true
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!

vim.opt.virtualedit = 'block' -- Enable block editting

vim.opt.expandtab = true -- Add spaces when pressing tab
vim.opt.tabstop = 2 -- Tab is 2 spaces
vim.opt.shiftwidth = 2 -- Shift per 2 spaces
vim.opt.shiftround = true -- Round shifts to allign (1 space + tab = 2 spaces)

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

vim.opt.updatetime = 300 -- Faster triggering of CursorHold events

vim.opt.signcolumn = 'yes:2'
