return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    init = function()
      require('lualine').setup {
        options = { theme = 'nightfly' }
      }
    end
  },
}
