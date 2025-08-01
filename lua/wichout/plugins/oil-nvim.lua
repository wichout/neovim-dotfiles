return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['H'] = 'actions.toggle_hidden',
        ['q'] = 'actions.close',
      },
      view_options = {
        show_hidden = true,
      },
      float = {
        max_width = 50,
        max_height = 20,
        border = 'solid',
        win_options = {
          winhl = 'Normal:NormalFloat,Float:NormalFloat',
        },
      },
    }
    vim.keymap.set('n', '<leader>oo', '<CMD>Oil --float<CR>', { desc = '[O]pen [O]il' })
  end,
}
