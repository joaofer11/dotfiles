return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({})
		vim.keymap.set("n", "<leader>e", vim.cmd.Oil)
	end
}
