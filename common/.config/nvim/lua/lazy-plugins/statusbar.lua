return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    init = function()
      require('lualine').setup {
        options = { theme = 'nightfly' },
        sections = {
          lualine_c = {
            {
              'filename',
              path = 1
            },
          },
        },
      }
    end,
  },
}
