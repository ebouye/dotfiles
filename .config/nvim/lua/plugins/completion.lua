return {
    "hrsh7th/cmp-nvim-lsp",
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("core.config.cmp-config").setup()
        end
    }
}
