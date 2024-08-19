-------------------
-- AUTO COMMANDS --
-------------------

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Automatically update cwd to project root
local root_names = { '.git', '.hg', 'Makefile' }
local root_cache = {} -- cache results (cost: might yield outdated results)
vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Automatically update cwd to project root',
  group = vim.api.nvim_create_augroup('MyAutoRoot', {}),
  callback = function()
    -- Get directory path to start search from
    local path = vim.api.nvim_buf_get_name(0)
    if path == '' then return end
    path = vim.fs.dirname(path)

    -- Try cache and resort to searching upward for root directory
    local root = root_cache[path]
    if root == nil then
      local root_file = vim.fs.find(root_names, { path = path, upward = true })[1]
      if root_file == nil then return end
      root = vim.fs.dirname(root_file)
      root_cache[path] = root
    end

    -- Set current directory
    vim.fn.chdir(root)
  end
})