local M = {}

function M.init ()
  local configs = require("nvim-treesitter.configs")

  local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

  parser_config.blade = {
    install_info = {
      url = "~/.config/nvim/lua/tree-sitter-blade",
      files = { "src/parser.c" }
    },
    filetype = "phtml",
  }

  configs.setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "elixir", "javascript", "typescript", "html", "css", "python", "blade" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return M

