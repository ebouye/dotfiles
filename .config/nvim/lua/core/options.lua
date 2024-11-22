vim.opt.nu = true
vim.opt.rnu = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.updatetime = 250

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.hidden = true

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'js', 'ts', 'tsx', 'jsx' },
    callback = function()
        vim.opt.shiftwidth = 2
        vim.opt.expandtab = true
        vim.opt.tabstop = 2
    end
})

vim.opt.mousemodel = 'extend'
