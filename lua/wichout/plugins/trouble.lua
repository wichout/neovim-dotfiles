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
      desc = '[D]iagnostics',
    },
    {
      '<leader>dtb',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[b]uffer diagnostics',
    },
    {
      '<leader>dtd',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[d]efinitions',
    },
    {
      '<leader>dts',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[s]ymbols',
    },
  },
}
