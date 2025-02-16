return {
  'luukvbaal/statuscol.nvim',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      segments = {
        { sign = { name = { '.*' }, namespace = { '.*' }, maxwidth = 1, colwidth = 1 } },
        { text = { builtin.lnumfunc, ' ' }, condition = { true, builtin.not_empty } },
      },
    }
  end,
}
