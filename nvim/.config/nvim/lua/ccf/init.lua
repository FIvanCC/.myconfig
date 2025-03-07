require("ccf.remap")
require("ccf.set")
require("ccf.lazy_init")
-- print("hello from ccf")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
-- auto format on save
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*.cpp",
-- 	callback = function()
-- 		vim.lsp.buf.format({ async = false })
-- 	end,
-- })
