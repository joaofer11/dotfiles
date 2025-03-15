return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	opts = { styles = { enabled = false } },
	init = function(_, opts)
		vim.o.termguicolors = true
		vim.o.background = "dark"
		vim.cmd.colorscheme("solarized")
	end,
}
