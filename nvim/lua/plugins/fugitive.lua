return {
	"tpope/vim-fugitive",
	init = function()
		vim.keymap.set("n", "<leader>go", vim.cmd.Git)
		vim.keymap.set("n", "<leader>gl", vim.cmd.Gclog)
	end
}
