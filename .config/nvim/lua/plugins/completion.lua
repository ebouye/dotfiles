return {
  {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  {
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function()
	require("luasnip.loaders.from_vscode").load()
      end
    },
    "saadparwaiz1/cmp_luasnip"
  },
  "hrsh7th/nvim-cmp",
}
