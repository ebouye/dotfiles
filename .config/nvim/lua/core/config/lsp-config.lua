local M = {}

function M.setup ()
  local lspconfig = require('lspconfig');
  local servers = { "pyright", "ts_ls" }

  for i, server in ipairs(servers) do
    lspconfig[server].setup {}
  end
end

return M
