-- See `:help gitsigns` to understand what the configuration keys do
return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '' },
        change = { text = '󰜥' },
        delete = { text = '_󰍴' },
        topdelete = { text = '󰍴' },
        changedelete = { text = '󰜥' },
      },
      numhl = true,
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 500,
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            return ']c'
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Git: Go to next hunk' })

        map('n', '[c', function()
          if vim.wo.diff then
            return '[c'
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Git: Go to prev hunk'  })

        -- Actions
        map('n', '<leader>hs', gs.stage_hunk, { desc = 'Git: [h]unk [s]tage' })
        map('n', '<leader>hr', gs.reset_hunk, { desc = 'Git: [h]unk [r]eset' })
        map('v', '<leader>hs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git: [h]unk [s]tage' })
        map('v', '<leader>hr', function()
          gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git: [h]unk [r]eset' })
        map('n', '<leader>hS', gs.stage_buffer, { desc = 'Git: [h]unk [S]tage buffer' })
        map('n', '<leader>hR', gs.reset_buffer, { desc = 'Git: [h]unk [R]eset buffer' })
        map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'Git: [h]unk [u]nstage' })
        map('n', '<leader>hp', gs.preview_hunk, { desc = 'Git: [h]unk [p]review diff' })
        map('n', '<leader>hb', function()
          gs.blame_line { full = true }
        end, { desc = 'Git: blame line' })
        map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'Git: [t]oggle [b]lame' })
        map('n', '<leader>hd', gs.diffthis, { desc = 'Git: diff this' })
        map('n', '<leader>hD', function()
          gs.diffthis '~'
        end, { desc = 'Git: diff this ~' })
        map('n', '<leader>td', gs.toggle_deleted, { desc = 'Git: [t]oggle [d]eleted' })

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end,
    }
  }
}
