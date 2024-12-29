local M = {}

function M.setup()
    local servers = { "pyright", "ts_ls", "lua_ls", "jdtls", "intelephense" }

    require("mason").setup()
    require("mason-lspconfig").setup {
        ensure_installed = servers,
    }

    local lspconfig = require('lspconfig');
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities();

    for _, server in ipairs(servers) do
        lspconfig[server].setup({
            capabilities = lsp_capabilities,
        })
    end

    local sign = function(opts)
        vim.fn.sign_define(opts.name, {
            texthl = opts.name,
            text = opts.text,
            numhl = '',
        })
    end

    sign({ name = 'DiagnosticSignError', text = '✘' })
    sign({ name = 'DiagnosticSignWarn', text = '▲' })
    sign({ name = 'DiagnosticSignHint', text = '⚑' })
    sign({ name = 'DiagnosticSignInfo', text = '»' })

    vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        float = {
            border = 'rounded',
            source = 'always',
        }
    })

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
        vim.lsp.handlers.hover,
        { border = 'rounded' }
    )
    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
        vim.lsp.handlers.signature_help,
        { border = 'rounded' }
    )
end

return M
