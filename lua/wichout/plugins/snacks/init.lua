return {
  'folke/snacks.nvim',
  lazy = false,
  priority = 1000,
  ---@type snacks.Config
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    indent = { enabled = true },
    picker = { enabled = true },
    lazygit = { configure = true },
    notifier = { enabled = true, timeout = 2500 },
    statuscolumn = require 'wichout.plugins.snacks.statuscolumn',
    dashboard = require 'wichout.plugins.snacks.dashboard',
  },
  keys = {
    -- lsp
    {
      '<leader>rf',
      function()
        require('snacks').rename.rename_file()
      end,
      desc = '[R]ename [F]ile',
    },
    -- lazygit
    {
      '<leader>ol',
      function()
        require('snacks').lazygit()
      end,
      desc = '[O]pen [L]azy Git',
      mode = { 'n' },
    },
    -- buffer delete
    {
      '<leader>db',
      function()
        require('snacks').bufdelete()
      end,
      desc = '[D]elete [B]uffer',
    },
    -- terminal
    {
      '<leader>tt',
      function()
        require('snacks').terminal()
      end,
      desc = '[T]oggle [T]erminal',
      mode = { 'n', 't' },
    },
    -- notifier
    {
      '<leader>N',
      function()
        require('snacks').notifier.hide()
      end,
      desc = 'Dismiss All [N]otificacions',
    },
    -- picker
    {
      '<leader>sb',
      function()
        Snacks.picker.buffers()
      end,
      desc = '[S]earch [B]uffers',
    },
    {
      '<leader>sf',
      function()
        Snacks.picker.files()
      end,
      desc = '[S]earch [F]iles',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.git_files()
      end,
      desc = '[S]earch [G]it Files',
    },
    {
      '<leader>sp',
      function()
        Snacks.picker.projects()
      end,
      desc = '[S]earch [P]rojects',
    },
    {
      '<leader>fr',
      function()
        Snacks.picker.recent()
      end,
      desc = '[F]ind [R]ecent',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Grep',
    },
  },
}
