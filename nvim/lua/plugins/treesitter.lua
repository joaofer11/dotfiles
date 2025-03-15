return {
	"nvim-treesitter/nvim-treesitter",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"vimdoc", "c", "javascript", "typescript",
				"lua", "query", "markdown", "markdown_inline",
				"jsdoc", "bash"
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {enable = true},

			incremental_selection = {
				enable = true,
				keymaps = {
					node_incremental = "v",
					node_decremental = "V",
					scope_incremental = "<leader>s"
				}
			},
		})
	end
}
