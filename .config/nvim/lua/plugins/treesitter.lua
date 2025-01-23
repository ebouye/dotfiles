return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
    },
    config = function ()
      require("core.config.treesitter-config").init {}
      vim.treesitter.language.register("blade", "blade")
    end
  },
  {
    "EmranMR/tree-sitter-blade",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = "blade"
  }
}
