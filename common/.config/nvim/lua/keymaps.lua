-- [[ keymaps + remaps ]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- enter netrw
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<cr>", {silent = true})

-- keep cursor in middle when scrolling half page
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep cursor in middle when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- clear highlights when done searching
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- avoid using these
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')


-- diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


