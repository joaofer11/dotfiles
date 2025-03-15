return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = "nvim-lua/plenary.nvim",
	opts = {
		defaults = {
			wrap_results = true,
			prompt_prefix = "  ",
			selection_caret = "> ",
		}
	},
	init = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fb", builtin.buffers)
		vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols)
	end
}
