return {
  'folke/snacks.nvim',
  lazy = false,
  priority = 1000,
  ---@type snacks.Config
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1, padding = 1 },
        { pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
        { pane = 2, icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
      },
    },
    notifier = {
      enabled = true,
      style = 'compact',
      timeout = 2500,
    },
    indent = { enabled = true },
    lazygit = {
      configure = true,
      win = {
        style = 'lazygit',
      },
    },
  },
  keys = {
    {
      '<leader>olg',
      function()
        require('snacks').lazygit()
      end,
      desc = '[O]pen [L]azy [G]it',
      mode = { 'n', 'v' },
    },
    {
      '<leader>db',
      function()
        require('snacks').bufdelete()
      end,
      desc = '[D]elete [B]uffer',
      mode = { 'n', 'v' },
    },
  },
}
