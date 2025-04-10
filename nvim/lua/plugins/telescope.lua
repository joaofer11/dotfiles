return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = "nvim-lua/plenary.nvim",
	opts = {},
	init = function()
		local telescope = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", telescope.find_files)
		vim.keymap.set("n", "<leader>fb", telescope.buffers)
		vim.keymap.set("n", "<leader>fs", telescope.lsp_document_symbols)
	end
}
