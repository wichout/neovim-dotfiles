return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup()

    -- Move any selection in any direction
    require('mini.move').setup()

    -- Split and join arguments
    require('mini.splitjoin').setup()

    -- Session manager
    require('mini.sessions').setup()

    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}

-- vim: ts=2 sts=2 sw=2
