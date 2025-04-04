vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false
-- move the line up and down in v mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set('n', '<leader>pv', '<cmd>Ex<CR>')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- print("inthe remap")
-- print("Leader key is set to: [" .. vim.g.mapleader .. "]")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })
vim.keymap.set("n", "<leader>o", "A<Esc>o<Esc>", { desc = "go to the new line in normal mode" })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
--neotree
vim.keymap.set("n", "<leader>tt", "<Cmd>Neotree float<CR>")
vim.keymap.set("n", "<leader>t", "<Cmd>Fterminal<CR>")
--tst
vim.keymap.set("n", "<leader>ri", "<Cmd>TSToolsRemoveUnusedImports<CR>")
vim.keymap.set("n", "<leader>si", "<Cmd>TSToolsSortImports<CR>")
