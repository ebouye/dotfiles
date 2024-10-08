local M = {}

function M.init ()
  local configs = require("nvim-treesitter.configs")

  configs.setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "elixir", "javascript", "typescript", "html", "css", "python" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
end

return M

