-- See `:help nvim-treesitter`
return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'go', 'python', 'sql',
          'typescript', 'tsx', 'javascript',
          'bash', 'html', 'yaml', 'toml', 'json',
          'terraform', 'lua', 'markdown',
          'vim', 'vimdoc'
        },
        auto_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
}

