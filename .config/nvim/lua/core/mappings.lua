local bind = vim.keymap.set

bind("n", "<leader>fe", ":Ex<CR>")
bind("n", "<leader>d", ":bdelete<CR>")
bind("n", "<Esc><Esc>", ":nohlsearch<CR>")

-- move in tab
bind("n", "<C-Left>", ':bprevious<CR>')
bind("n", "<C-Right>", ':bnext<CR>')
bind("n", "<C-h>", ':bprevious<CR>')
bind("n", "<C-l>", ':bnext<CR>')

-- move in split
bind("n", "<M-Down>", '<C-W><C-J>')
bind("n", "<M-Up>", '<C-W><C-K>')
bind("n", "<M-Left>", '<C-W><C-H>')
bind("n", "<M-Right>", '<C-W><C-L>')
bind("n", "<M-J>", '<C-W><C-J>')
bind("n", "<M-k>", '<C-W><C-K>')
bind("n", "<M-h>", '<C-W><C-H>')
bind("n", "<M-l>", '<C-W><C-L>')


-- bind('n', 'gi', vim.buf.implementation)
bind('n', 'gs', vim.lsp.buf.signature_help)
bind('n', 'gD', vim.lsp.buf.declaration)
bind('n', 'gd', vim.lsp.buf.definition)
bind('n', 'go', vim.lsp.buf.type_definition)
bind('n', '<F2>', vim.lsp.buf.rename)
bind('n', '<F4>', vim.lsp.buf.code_action)
bind('n', 'K', vim.lsp.buf.hover)
bind('n', 'gr', vim.lsp.buf.references)
bind('n', '<leader>e', vim.diagnostic.open_float)
bind('n', '<leader>a', vim.diagnostic.setloclist)
bind('n', 'gl', vim.diagnostic.open_float)
bind('n', '[d', vim.diagnostic.goto_prev)
bind('n', ']d', vim.diagnostic.goto_next)

-- LSP AutoCMD
--vim.api.nvim_create_autocmd('LspAttach', {
--  desc = 'LSP actions',
--  callback = function(args)
--    -- format current buffer on save
--    --vim.api.nvim_create_autocmd('BufWritePre', {
--    --  buffer = args.buf,
--    --  callback = function()
--    --    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
--    --  end
--    --})
--  end
--})
