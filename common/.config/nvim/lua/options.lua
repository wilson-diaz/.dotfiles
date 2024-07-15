-- [[ set options ]]

vim.opt.nu = true
vim.opt.relativenumber = true

-- display gutter
vim.opt.signcolumn = 'yes'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- case insensitive search unless query has capitals
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.mouse = 'a'

-- time to wait before writing to swapfile
vim.opt.updatetime = 250

-- time to wait before cancelling incomplete mapped key sequence
-- ex. pressing <leader> and nothing else
vim.opt.timeoutlen = 3000

vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- override how certain whitespace is displayed
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview substitution commands
vim.opt.inccommand = 'split'

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
