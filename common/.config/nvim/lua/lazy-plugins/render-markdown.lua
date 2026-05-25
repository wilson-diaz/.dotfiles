-- Render markdown nicely inside Neovim
-- Loads on markdown filetypes and uses nvim-treesitter for parsing
return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      -- Optional helpers; these are safe to include if present
      'nvim-mini/mini.nvim',
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      -- Default setup is sufficient for most users. Adjust opts if desired.
      require('render-markdown').setup({})
    end,
  },
}
