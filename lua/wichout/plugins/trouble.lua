return {
  'folke/trouble.nvim',
  opts = {
    auto_close = true,
  },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>dtD',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[D]ocument [T]oggle [D]iagnostics',
    },
    {
      '<leader>dtb',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[D]ocument [T]oggle [b]uffer diagnostics',
    },
    {
      '<leader>dtd',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[D]ocument [T]oggle [d]efinitions',
    },
    {
      '<leader>dts',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[D]ocument [T]oggle [s]ymbols',
    },
  },
}
