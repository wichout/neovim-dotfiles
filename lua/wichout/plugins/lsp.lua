-- LSP Plugins
return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luviy yypes when the `vim.uv` word is found
        { path = '{3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'mason-org/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      'saghen/blink.cmp',
    },
    config = function()
      local mason_lspconfig = require 'mason-lspconfig'
      local mason_tool_installer = require 'mason-tool-installer'
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- Diagnostic icons and colors
      vim.diagnostic.config {
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        signs = vim.g.have_nerd_font and {
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
          } or {},
        },
        virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic)
            local diagnostic_message = {
              [vim.diagnostic.severity.ERROR] = diagnostic.message,
              [vim.diagnostic.severity.WARN] = diagnostic.message,
              [vim.diagnostic.severity.INFO] = diagnostic.message,
              [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
          end,
          prefix = '',
          hl_mode = 'blend',
        },
        underline = false,
      }

      vim.lsp.config('*', { capabilities = capabilities })

      local servers = {
        'ruff',
        'stylua',
        'prettierd',
        'shfmt',
        'yamlfmt',
        'markdownlint',
        'lua_ls',
        'ts_ls',
        'basedpyright',
      }

      mason_tool_installer.setup {
        ensure_installed = servers,
      }

      vim.lsp.enable { 'ts_ls', 'basedpyright', 'ruff', 'lua_ls' }

      vim.lsp.config('lua_ls', {
        settings = {
          ['Lua'] = {
            completion = {
              callSnippet = 'Replace',
            },
            hint = {
              enable = true,
            },
            diagnostics = { disable = { 'missing-fields' } },
          },
        },
      })

      vim.lsp.config('basedpyright', {
        settings = {
          ['basedpyright'] = {
            analysis = {
              ignore = { '*' },
            },
            disableOrganizeImports = true,
          },
        },
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
