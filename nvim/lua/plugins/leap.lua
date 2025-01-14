return {
	"ggandor/leap.nvim",
	dependencies = {"tpope/vim-repeat"},
	config = function()
		vim.keymap.set("n",        "s", "<Plug>(leap)")
		vim.keymap.set({"x", "o"}, "s", "<Plug>(leap-forward)")
		vim.keymap.set({"x", "o"}, "x", "<Plug>(leap-backward)")
	end
}
