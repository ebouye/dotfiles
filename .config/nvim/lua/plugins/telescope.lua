return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope find string' })
	vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope list previous open files' })
	vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = 'Telescope list commands' })
	vim.keymap.set('n', '<leader>fsh', builtin.search_history, { desc = 'Telescope search history' })
	vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Telescope list marks' })
	vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = 'Telescope list quickfix list' })
	vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = 'Telescope list registers' })
	vim.keymap.set('n', '<leader>?', builtin.current_buffer_fuzzy_find, { desc = 'Telescope live fuzzy find in the current buffer' })
  end
}
