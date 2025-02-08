return {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    require('everforest').load()
  end,
}
