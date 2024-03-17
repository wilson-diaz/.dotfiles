return {
  {
    'mfussenegger/nvim-lint',
    config = function ()
      local lint = require('lint')
      lint.linters_by_ft = {
        -- ensure these are already installed
        json = { 'jsonlint' },
        yaml = { 'yamllint' },
        sh = { 'shellcheck' },
      }

      vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave', 'TextChanged' }, {
        callback = function()
          lint.try_lint()
        end
      })
    end
  },
}
