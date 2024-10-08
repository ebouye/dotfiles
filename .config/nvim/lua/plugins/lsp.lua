return {
  "neovim/nvim-lspconfig",
  config = function()
    require("core.config.lsp-config").setup {}
  end
}
