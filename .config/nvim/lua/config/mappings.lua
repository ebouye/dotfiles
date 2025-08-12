vim.keymap.set("n", "fe", "<cmd>Ex<cr>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Diagnotics keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open [Q]uickFix List" })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C\\><C-n>", { desc = "Exit terminal mode" })

-- Split window
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus window on left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus window on right window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus window on upper window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus window on lower window" })

-- LSP
vim.keymap.set(
	"n",
	"<leader>e",
	"<cmd>lua vim.diagnostic.open_float(nil, {focus = false})<CR>",
	{ desc = "Show diagnostic message" }
)
