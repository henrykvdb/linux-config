return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      --"L3MON4D3/LuaSnip",
      --"saadparwaiz1/cmp_luasnip",
      --"j-hui/fidget.nvim", -- lsp progress messages
  },

  config = function()
      local cmp = require('cmp')
      local cmp_lsp = require("cmp_nvim_lsp")
      local capabilities = vim.tbl_deep_extend(
          "force",
          {},
          vim.lsp.protocol.make_client_capabilities(),
          cmp_lsp.default_capabilities())

      -- WIP TMP HACK capabilities
      --capabilities["textDocument"]["codeAction"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["hover"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["rename"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["formatting"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["inlayHint"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["definition"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["rangeFormatting"]["dynamicRegistration"] = false
      --capabilities["textDocument"]["diagnostic"]["relatedDocumentSupport"] = false
      --print(vim.inspect(capabilities))
      --print(vim.inspect(capabilities))

      -- TMP hack https://github.com/neovim/neovim/issues/29927
      -- use local verible version instead of Mason one
      --local lsp_config = require('lspconfig')
      --lsp_config.verible.setup({})

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
              --"pyright",
              "lua_ls",
              "verible",
              --"rust_analyzer",
              --"tsserver",
            },
          handlers = {
              function(server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup {
                  capabilities = capabilities
                }
              end,

              ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup {
                  capabilities = capabilities,
                  settings = {
                    Lua = {
                      diagnostics = {
                        globals = { "vim" },
                      }
                    }
                  }
                }
              end,
            }
          })
          --require("fidget").setup({})

      local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
          --snippet = {
          --    expand = function(args)
          --        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          --    end,
          --},
          mapping = cmp.mapping.preset.insert({
              ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
              ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
              ['<C-y>'] = cmp.mapping.confirm({ select = true }),
              ["<C-Space>"] = cmp.mapping.complete(),
          }),
          sources = cmp.config.sources({
              { name = 'nvim_lsp' },
              --{ name = 'luasnip' }, -- For luasnip users.
          }, {
              { name = 'buffer' },
          })
      })

      --vim.diagnostic.config({
      --    -- update_in_insert = true,
      --    float = {
      --        focusable = false,
      --        style = "minimal",
      --        border = "rounded",
      --        source = "always",
      --        header = "",
      --        prefix = "",
      --    },
      --})
  end
}
