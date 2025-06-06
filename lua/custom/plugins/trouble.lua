return {
  'folke/trouble.nvim',
  opts = {
    auto_close = true,
  },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>td',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[T]oggle Trouble [D]iagnostic',
    },
    {
      '<leader>tB',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[T]oggle Trouble Diagnostics [B]uffer',
    },
    {
      '<leader>tq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = '[T]oggle Trouble [Q]uickfix List',
    },
  },
}
