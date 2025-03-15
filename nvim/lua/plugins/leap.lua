return {
	"ggandor/leap.nvim",
	dependencies = { "tpope/vim-repeat" },
	config = function()
		vim.keymap.set({"n", "v", "x"}, "s", "<Plug>(leap)")
	end
}
