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
      desc = '[g]it files',
      mode = { 'n' },
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
      desc = '[f]iles',
      mode = { 'n' },
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers()
      end,
      desc = '[b]uffers',
      mode = { 'n' },
    },
    {
      '<leader>fp',
      function()
        Snacks.picker.projects()
      end,
      desc = '[p]rojects',
      mode = { 'n' },
    },
    -- lsp
    {
      '<leader>dr',
      function()
        require('snacks').rename.rename_file()
      end,
      desc = '[r]ename file',
      mode = { 'n' },
    },
    -- lazygit
    {
      '<leader>ol',
      function()
        require('snacks').lazygit()
      end,
      desc = '[l]azy git',
      mode = { 'n' },
    },
    -- buffer delete
    {
      '<leader>db',
      function()
        require('snacks').bufdelete()
      end,
      desc = '[d]elete buffer',
      mode = { 'n' },
    },
    -- terminal
    {
      '<leader>ot',
      function()
        require('snacks').terminal '$SHELL'
      end,
      desc = '[t]erminal',
      mode = { 'n' },
    },
    -- Grep
    {
      '<leader>sgb',
      function()
        Snacks.picker.lines()
      end,
      desc = 'current [b]uffer',
      mode = { 'n' },
    },
    {
      '<leader>sgB',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'open [B]uffers',
      mode = { 'n' },
    },
    {
      '<leader>sgs',
      function()
        Snacks.picker.grep_word()
      end,
      desc = '[s]election',
      mode = { 'n', 'x' },
    },
    {
      '<leader>sgg',
      function()
        Snacks.picker.git_grep()
      end,
      desc = '[g]it files',
    },
    {
      '<leader>sH',
      function()
        Snacks.picker.highlights()
      end,
      desc = '[H]ighlights',
    },
    {
      '<leader>sk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = '[k]eymaps',
    },
  },
  init = function()
    vim.api.nvim_set_hl(0, 'SnacksPickerBorder', {
      link = 'NormalFloat',
    })
  end,
}
