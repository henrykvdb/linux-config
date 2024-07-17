local home = os.getenv('HOME')
if home == nil then home = os.getenv('USERPROFILE') end

-- Set leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("lazy_init")
--require("plugins")
require("options")
