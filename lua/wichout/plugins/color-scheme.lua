return {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.cmd [[colorscheme everforest]]
    vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
  end,
}
