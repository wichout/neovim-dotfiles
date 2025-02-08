return {
  'luukvbaal/statuscol.nvim',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      segments = {
        -- {
        --   sign = { namespace = { 'gitsigns' }, maxwidth = 1, colwidth = 1 },
        -- },
        -- {
        --   sign = { namespace = { 'diagnostic/signs' }, maxwidth = 1, colwidth = 1, auto = true },
        -- },
        { sign = { namespace = { '.*' }, maxwidth = 1, colwidth = 1, wrap = true } },
        { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
      },
    }
  end,
}
