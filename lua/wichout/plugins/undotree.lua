return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>ou', vim.cmd.UndotreeToggle, { desc = '[O]pen [u]ndoTree' })
  end,
}
