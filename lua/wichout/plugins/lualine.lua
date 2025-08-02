return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local navic = require 'nvim-navic'
    require('lualine').setup {
      options = {
        theme = 'auto',
        component_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {
            'undotree',
            'trouble',
          },
          winbar = {
            'undotree',
            'trouble',
            'qf',
          },
        },
        ignore_focus = {
          'trouble',
          'oil',
          'snacks_picker_input',
          'snacks_terminal',
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {
          'diagnostic',
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
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {
          'diagnostic',
        },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },

      winbar = {
        lualine_c = {
          {
            'filename',
            function()
              return navic.get_location()
            end,
            cond = function()
              return navic.is_available()
            end,
          },
        },
      },
      inactive_winbar = {
        lualine_c = {
          'filename',
        },
      },
    }
  end,
}
