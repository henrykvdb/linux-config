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
      'verilog', -- also used for SV
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
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.verilog = {
      install_info = {
        url = "https://github.com/gmlarumbe/tree-sitter-systemverilog",
        files = {"src/parser.c"},
        revision = "a04b8cb29daefacd33174111bf8ec9c9411f8659"
      },
      filetype = "verilog", -- if filetype does not match the parser name
    }

    -- Code below allows dynamically changing querries (current workaround: custom queries added in rtp)
    --local project_path = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h")
    --local query_files = vim.fn.globpath(project_path, "queries-fake/verilog/**", nil, true)
    --for _, query_file in ipairs(query_files) do
    --  local query_name = vim.fn.fnamemodify(query_file, ":t:r")
    --  local query_content = table.concat(vim.fn.readfile(query_file), "\n")
    --  vim.treesitter.query.set("verilog", query_name, query_content)
    --end
    
    -- Use upstream instead of forked version
    vim.treesitter.language.register('verilog', 'systemverilog')
    require("nvim-treesitter.configs").setup(opts)
  end
}
