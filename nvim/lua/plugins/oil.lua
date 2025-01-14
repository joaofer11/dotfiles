return {
	"stevearc/oil.nvim",
	opts = {},
	config = function(_, opts)
		require("oil").setup(opts)
		vim.keymap.set("n", "<leader>e", vim.cmd.Oil)
	end
}
