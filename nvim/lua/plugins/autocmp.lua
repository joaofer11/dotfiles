return {
	"hrsh7th/nvim-cmp", -- Autocompletion plugin
	dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline"},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-.>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"]  = cmp.mapping.confirm({select = true}),
			}),
			sources = {
				{name = "nvim_lsp"},
			}
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources(
				{{name = "path"}},
				{{name = "cmdline"}}
			),
			matching = {disallow_symbol_nonprefix_matching = false }
		})
	end
}
