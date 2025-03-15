local generic_group = vim.api.nvim_create_augroup("generic_group", {})

require("options")
require("keymaps")
require("plugin-manager")

-- Trim spaces at the end of each line writing the buffer.
vim.api.nvim_create_autocmd("BufWritePre", {
	group = generic_group,
	pattern = "*",
	command = [[%s/\s\+$//e]]
})
