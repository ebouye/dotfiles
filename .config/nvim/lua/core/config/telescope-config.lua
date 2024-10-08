local M = {}

local bind = vim.keymap.set

function M.setup ()
  local builtin = require('telescope.builtin')
  bind('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
  bind('n', '<leader>sf', builtin.git_files, { desc = 'Telescope find files respects .gitignore' })
  bind('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
  bind('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
  bind('n', '<leader>ht', builtin.help_tags, { desc = 'Telescope help tags' })
  bind('n', '<leader>?', builtin.oldfiles, { desc = 'Telescope lists previously open files' })
end

return M
