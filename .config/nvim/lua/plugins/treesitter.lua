return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require("core.config.treesitter-config").init {}
  end
}
