return {
	"stevearc/oil.nvim",
	opts = {},
	init = function()
		vim.keymap.set("n", "-", vim.cmd.Oil)
	end
}
