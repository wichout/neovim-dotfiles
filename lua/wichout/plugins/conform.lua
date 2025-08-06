-- Autoformat
return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader><leader>',
      function()
        require('conform').format { async = false, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 1000,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      bash = { 'shfmt' },
      zsh = { 'shfmt' },
      sh = { 'shfmt' },
      javascript = { 'prettierd' },
      typescript = { 'prettierd' },
      json = { 'prettierd' },
      yaml = { 'yamlfmt' },
      markdown = { 'markdownlint' },
      python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },

      -- You can use 'stop_after_first' to run the first available formatter from the list
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
