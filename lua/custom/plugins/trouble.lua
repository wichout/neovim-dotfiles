return {
  'folke/trouble.nvim',
  opts = {
    auto_close = true,
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>td',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[T]oggle Trouble [D]iagnostic',
    },
    {
      '<leader>tdb',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[T]oggle Trouble [D]iagnostics [B]uffer',
    },
    {
      '<leader>ts',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[T]rouble Trouble [S]ymbols',
    },
    {
      '<leader>tl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[T]rouble Trouble [L]SP',
    },
    {
      '<leader>tll',
      '<cmd>Trouble loclist toggle<cr>',
      desc = '[T]oggle Trouble [L]ocal [L]ist',
    },
    {
      '<leader>tq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = '[T]oggle Trouble [Q]uickfix List',
    },
  },
}
