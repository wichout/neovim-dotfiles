return {
  -- 'neanias/everforest-nvim',
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd [[colorscheme kanagawa-wave]]

    local colors = vim.api.nvim_get_hl(0, { name = 'Label' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.fg })
    vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })

    local error = vim.api.nvim_get_hl(0, { name = 'DiagnosticError' })
    local warn = vim.api.nvim_get_hl(0, { name = 'DiagnosticWarn' })
    local hint = vim.api.nvim_get_hl(0, { name = 'DiagnosticHint' })
    local info = vim.api.nvim_get_hl(0, { name = 'DiagnosticInfo' })

    local highlight_groups = {
      DiagnosticVirtualTextError = { fg = error.fg, bg = error.fg, blend = 70 },
      DiagnosticVirtualTextWarn = { fg = warn.fg, bg = warn.fg, blend = 70 },
      DiagnosticVirtualTextHint = { fg = hint.fg, bg = hint.fg, blend = 70 },
      DiagnosticVirtualTextInfo = { fg = info.fg, bg = warn.fg, blend = 70 },
    }
    for group, opts in pairs(highlight_groups) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end,
}
