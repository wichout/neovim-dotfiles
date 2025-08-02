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
    lazygit = { configure = true },
    notifier = { enabled = true, timeout = 2500 },
    picker = require 'wichout.plugins.snacks.picker',
    statuscolumn = require 'wichout.plugins.snacks.statuscolumn',
    dashboard = require 'wichout.plugins.snacks.dashboard',
  },
  keys = {
    -- find
    {
      '<leader>fg',
      function()
        Snacks.picker.git_files()
      end,
      desc = '[F]ind [g]it Files',
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
      desc = '[F]ind [f]iles',
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers()
      end,
      desc = '[F]ind [b]uffers',
    },
    {
      '<leader>fp',
      function()
        Snacks.picker.projects()
      end,
      desc = '[F]ind [p]rojects',
    },
    -- lsp
    {
      '<leader>rf',
      function()
        require('snacks').rename.rename_file()
      end,
      desc = '[R]ename [f]ile',
    },
    -- lazygit
    {
      '<leader>ol',
      function()
        require('snacks').lazygit()
      end,
      desc = '[O]pen [l]azy git',
      mode = { 'n' },
    },
    -- buffer delete
    {
      '<leader>ddb',
      function()
        require('snacks').bufdelete()
      end,
      desc = '[D]ocument [D]elete [b]uffer',
    },
    -- terminal
    {
      '<leader>ot',
      function()
        require('snacks').terminal '$SHELL'
      end,
      desc = '[O]pen [t]erminal',
      mode = { 'n' },
    },
    -- Grep
    {
      '<leader>sgb',
      function()
        Snacks.picker.lines()
      end,
      desc = '[S]earch [g]rep [b]uffer Lines',
    },
    {
      '<leader>sgB',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = '[S]earch [g]rep Open [B]uffers',
    },
    {
      '<leader>sgs',
      function()
        Snacks.picker.grep_word()
      end,
      desc = '[S]earch [g]rep [s]election',
      mode = { 'n', 'x' },
    },
    {
      '<leader>sk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = '[S]earch [k]eymaps',
    },
  },
}
