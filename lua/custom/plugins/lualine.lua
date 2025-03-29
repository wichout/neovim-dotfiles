return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {
      'linrongbin16/lsp-progress.nvim',
      opts = {},
    },
  },
  config = function()
    local navic = require 'nvim-navic'
    require('lualine').setup {
      options = {
        theme = 'everforest',
        component_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {
            'dashboard',
            'trouble',
            'undotree',
          },
          winbar = {
            'dashboard',
            'trouble',
            'undotree',
          },
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostic' },
        lualine_c = {
          function()
            return require('lsp-progress').progress()
          end,
        },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      winbar = {
        lualine_c = {
          'filename',
          {
            function()
              return navic.get_location()
            end,
            cond = function()
              return navic.is_available()
            end,
          },
        },
      },
      -- inactive_winbar = {
      --   lualine_c = {
      --     'filename',
      --     {
      --       function()
      --         return navic.get_location()
      --       end,
      --       cond = function()
      --         return navic.is_available()
      --       end,
      --     },
      --   },
      -- },
    }
    vim.api.nvim_create_augroup('lualine_augroup', { clear = true })
    vim.api.nvim_create_autocmd('User', {
      group = 'lualine_augroup',
      pattern = 'LspProgressStatusUpdated',
      callback = require('lualine').refresh,
    })
  end,
}
