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

-- LSP AutoCMD
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(args)
        local bufmap = function(mode, lhs, rhs)
            local opts = { buffer = true }
            vim.keymap.set(mode, lhs, rhs, opts)
        end

        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.supports_method('textDocument/implementation') then
            bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
        end
        if client.supports_method('textDocument/signatureHelp') then
            bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
        end
        if client.supports_method('textDocument/declaration*') then
            bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
        end
        if client.supports_method('textDocument/definition') then
            bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
            bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
        end
        if client.supports_method('textDocument/rename') then
            bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
        end
        if client.supports_method('textDocument/codeAction') then
            bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
        end
        if client.supports_method('textDocument/hover') then
            bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
        end
        if client.supports_method('textDocument/references') then
            bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
        end
        if client.supports_method('textDocument/diagnostic') then
            bufmap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.open_float()<cr>')
            bufmap('n', '<leader>a', '<cmd>lua vim.lsp.diagnostic.setloclist()<cr>')
            bufmap('n', 'gl', '<cmd>lua vim.lsp.diagnostic.open_float()<cr>')
            bufmap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>')
            bufmap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>')
        end
        if client.supports_method('textDocument/formating') then
            -- format current buffer on save
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                end
            })
        end
    end
})
