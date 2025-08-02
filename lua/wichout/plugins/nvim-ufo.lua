return {
  'kevinhwang91/nvim-ufo',
  dependencies = 'kevinhwang91/promise-async',
  config = function()
    -- vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'Open All Folds' })
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'Close All Folds' })
    vim.keymap.set('n', 'zK', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = 'Peek Fold' })

    require('ufo').setup {
      providers_selectior = function(bufnr, filetype, buftype)
        return { 'lsp', 'indent' }
      end,
    }
  end,
}
