return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "VeryLazy" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  init = function()
    -- Should we do something here?
  end,
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      'python',
      'lua',
      --'verilog',
      'systemverilogcustom',
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
        --disable = { 'systemverilog', 'verilog', "lua" },

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = { "markdown" },
    },

    textobjects = {
      move = {
        enable = true,
        goto_next_start = { [']]'] = '@block.outer' },
        goto_previous_start = { ['[['] = '@block.outer' },
        goto_next_end = { [']['] = '@block.outer' },
        goto_previous_end = { ['[]'] = '@block.outer' },
      },
      --swap = {
      --  enable = true,
      --  swap_next = {
      --    ['<A-n>'] = '@parameter.inner',
      --  },
      --  swap_previous = {
      --    ['<A-p>'] = '@parameter.inner',
      --  },
      --},
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ab'] = '@block.outer',
          ['ib'] = '@block.inner',
        },
      },
    },
  },
  config = function(_, opts)
    
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.luacustom = {
      install_info = {
        url = "https://github.com/MunifTanjim/tree-sitter-lua",
        files = { "src/parser.c", "src/scanner.c" },
        --location = "tree-sitter-lua_neo/lua",
        --revision = "a5fc8b29c5c74fe016f4da71badb9476277b5146",
      },
      filetype = "lua",
      maintainers = { "@MunifTanjim" },
    }
    parser_config.systemverilogcustom = {
      install_info = {
        url = "/home/vanderbr/tree-sitter-verilog",
        files = {"src/parser.c"},
        --branch = "main",
        --generate_requires_npm = false,
        --requires_generate_from_grammar = false,
      },
      filetype = "sv", -- if filetype does not match the parser name
    }

    require("nvim-treesitter.configs").setup(opts)
  end
}