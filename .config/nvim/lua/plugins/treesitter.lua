return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "VeryLazy" },
  init = function()
    -- Should we do something here?
  end,
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      'python',
      'lua',
      'verilog',
      'json',
      'yaml',
      'bash',
      'dockerfile',
      'c',
      'cpp',
      'make',
      'regex',
      'markdown',
      'rst',
      'vim',
      'vimdoc',
      'query',
      'typescript',
      --'tcl',
      'proto',
      'matlab',
      'kotlin',
    },

    indent = {
        enable = true
    },

    highlight = {
        enable = true,

        -- Disable for SV/V, avoid rainbow vommit
        disable = { 'systemverilog', 'verilog', "lua" },

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = { "markdown" },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}