return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function ()
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  -- {
  --     "folke/tokyonight.nvim",
      -- lazy = false,    -- make sure we load this during startup if it is your main colorscheme
      -- priority = 1000, -- make sure to load this before all the other start plugins
      -- config = function()
      --     -- load the colorscheme here
      --     vim.cmd([[colorscheme tokyonight]])
      -- end,
  -- },
  -- {
  --   "rose-pine/neovim", 
  --   name = "rose-pine",
  -- },
  -- {
  --   "lunarvim/darkplus.nvim",
    -- config = function()
      -- vim.cmd([[colorscheme darkplus]])
    -- end
  -- },
  -- {
  --   'loctvl842/monokai-pro.nvim',
  -- },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000,
  --   config = function ()
  --     vim.cmd("colorscheme catppuccin-mocha")
  --   end
  -- },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('lualine').setup()
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    config = function ()
      require("nvim-tree").setup()
    end,
  }
}
