-- Line numbers, relative line number and cursor line
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Use same clipboard between OS and Neovimequire
vim.opt.clipboard = 'unnamedplus'

-- Case sensitive searchequire
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable sign column
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.timeoutlen = 300

-- Enable listchars
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview subtitutions live
vim.opt.inccommand = 'split'

-- Minimal number of line to keep above and below cursor
vim.opt.scrolloff = 6

-- Enable confirm for operation that would will fail doe to unsaved in the buffer
vim.opt.confirm = true

-- Background of neovim
vim.opt.background = 'dark'

-- Tabspace
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
