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

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add blink.cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.

      local ensure_installed = {
        'ts_ls',
        'tailwindcss',
        'pylsp',
        'ruff',
        'lua_ls',
        'stylua',
        'prettierd',
        'eslint-lsp',
        'shfmt',
        'ruff',
        'markdownlint',
      }

      mason_tool_installer.setup { ensure_installed = ensure_installed }

      vim.lsp.config('*', { capabilities = capabilities })

      mason_lspconfig.setup {
        ensure_installed = {},
        automatic_enable = {
          exclude = { 'tailwindcss' },
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
