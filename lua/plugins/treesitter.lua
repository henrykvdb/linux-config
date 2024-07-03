return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
      require("nvim-treesitter.configs").setup({
          -- A list of parser names, or "all"
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

          -- Install parsers synchronously (only applied to `ensure_installed`)
          sync_install = false,

          -- Automatically install missing parsers when entering buffer
          -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
          auto_install = true,

          indent = {
              enable = true
          },

          highlight = {
              -- `false` will disable the whole extension
              enable = true,

              -- Disable for SV/V
              disable = { 'systemverilog', 'verilog' },

              -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
              -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
              -- Using this option may slow down your editor, and you may see some duplicate highlights.
              -- Instead of true it can also be a list of languages
              additional_vim_regex_highlighting = { "markdown" },
          },
      })
  end
}
