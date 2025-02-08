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
    require('lualine').setup {
      options = {
        theme = 'everfrost',
        component_separators = { left = '', right = '┃' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_c = {
          'filename',
          function()
            return require('lsp-progress').progress()
          end,
        },
      },
    }
    vim.api.nvim_create_augroup('lualine_augroup', { clear = true })
    vim.api.nvim_create_autocmd('User', {
      group = 'lualine_augroup',
      pattern = 'LspProgressStatusUpdated',
      callback = require('lualine').refresh,
    })
  end,
}
