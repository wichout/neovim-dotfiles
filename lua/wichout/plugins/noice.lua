-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
  },
  opts = {
    lsp = {
      progress = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
      message = { enabled = false },
    },
    presets = {
      bottom_search = false,
    },
    notify = {
      enabled = false,
    },
    cmdline = {
      opts = {
        border = {
          style = 'solid',
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = {
            Normal = 'NormalFloat',
            FloatBorder = 'NormalFloat', -- shouldn't this clear guifg?
            IncSearch = '',
            Search = '',
          },
          cursorline = false,
        },
      },
    },
  },
}
