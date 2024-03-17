-- setup code formatters
-- more config options: https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md
return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    opts = {
      notify_on_error = false,
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
      formatters_by_ft = {
        -- ensure these are installed (either by Mason or manually)
        python = { 'ruff_fix', 'ruff_format' },

        lua = { 'stylua' },

        go = { 'goimports', 'gofmt' },

        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        json = { 'prettierd' },
        yaml = { 'prettierd' },
        markdown = { 'prettierd' },

        -- runs for filetypes w/o formatters
        ['_'] = { 'trim_whitespace' },
      },
    },
  },
}
