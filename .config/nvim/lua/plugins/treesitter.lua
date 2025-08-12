return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function ()
	local treesitter = require('nvim-treesitter')
	local configs = require('nvim-treesitter.configs')

	treesitter.setup {
	  -- Directory to install parsers and queries to
	  install_dir = vim.fn.stdpath('data') .. '/site'
	}

	configs.setup({ 
		ensure_installed = 'rust', 'zig', "c", "lua", "vim", "vimdoc", "php", "markdown", "markdown_inline", "typescript", "javascript", "html", "css"
	})

	-- Enable folding by treesitter
	vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

	-- Treesitter experimantal indentation
	-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end
}


