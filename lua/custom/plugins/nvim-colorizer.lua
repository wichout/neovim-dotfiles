return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = { -- set to setup table
    user_default_options = {
      mode = 'virtualtext',
      virtualtext = '',
      virtualtext_inline = 'before',
      names = false,
    },
  },
}
