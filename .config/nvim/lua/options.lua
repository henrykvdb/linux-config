-------------------
----- BEHAVIOR ----
-------------------

-- General
vim.opt.fixendofline = true -- Add EOL when missing
vim.opt.virtualedit = 'block' -- Enable vitual edit in block mode

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300 -- Shorter sequence time => display which-key sooner
vim.opt.updatetime = 250 -- Faster disk write & CursorHold events
vim.opt.ttimeoutlen = 10 -- Reduce keycode timeout

-- Tabs/Spaces
vim.opt.expandtab = true -- Add spaces when pressing tab
vim.opt.tabstop = 2 -- Tab is 2 spaces
vim.opt.shiftwidth = 2 -- Shift per 2 spaces
vim.opt.shiftround = true -- Round shifts to allign (1 space + tab = 2 spaces)

-- Searching and substitute
vim.opt.magic = true -- Enable regexes
vim.opt.ignorecase = true -- Search not case sensitive
vim.opt.smartcase = true -- When search pattern contains cases, be case sensitive

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Git difference
--vim.opt.diffopt:append 'iwhite' -- Ignore whitespace in diffs
--vim.opt.diffopt:append 'internal' -- Internal diff engine
--vim.opt.diffopt:append 'algorithm:patience' -- Use patience algorithm
--vim.opt.diffopt:append 'linematch:60' -- Second order diff to align lines

-- Folds
--vim.opt.foldmethod = 'expr'
--vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
--vim.opt.foldnestmax = 3
--vim.opt.foldminlines = 1
--vim.opt.foldtext =
--  [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
--vim.opt.foldenable = false

-- Undo history
--local optdir = function(path)
--  local Path = require 'plenary.path'
--  local full_path = Path:new(vim.fn.stdpath 'cache' .. '/' .. path)
--  if not full_path:exists() then full_path:mkdir { parents = true } end
--  return full_path .. '//'
--end
--vim.opt.undofile = true -- Persistently remember undos
--vim.opt.undolevels = 1000
--vim.opt.undodir = optdir 'undo'
--vim.opt.swapfile = false -- Disable swap files
--vim.opt.backup = true -- Keep backups
--vim.opt.backupdir = optdir 'backup'

-------------------
----- VISUALS -----
-------------------

-- General
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes:2'
vim.opt.scrolloff = 4
vim.opt.cursorline = true

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.showcmd = true -- Show incomplete commands while typing

-- Wrapping
vim.opt.wrap = true -- Wrap lines
vim.opt.wrapmargin = 2 -- Stay 2 chars from side
--vim.opt.linebreak = true -- Smarter wrapping
vim.opt.breakindent = true -- Indent wrapped lines to same level
vim.opt.colorcolumn = '101' -- Show indication of 101 chars

-- Splits
vim.opt.mouse = 'a' -- Enable mouse mode, e.g. for resizing splits
vim.opt.splitright = true -- Open new splits to right
vim.opt.splitbelow = false -- Open new splits to right

-- Show certain characters
vim.opt.list = true
vim.opt.listchars = { trail = '·', extends = '>', precedes = '<', nbsp = '+', tab = '» ' }
