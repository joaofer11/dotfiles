local lspgrp = vim.api.nvim_create_augroup("LspGroup", {})

vim.api.nvim_create_autocmd("LspAttach", {
	pattern = "*",
	group = lspgrp,
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		client.server_capabilities.semanticTokensProvider = nil
	end,
});

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")

		local cmp_select = {behavior = cmp.SelectBehavior.Select}

		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {"clangd", "ts_ls"},
			handlers = {
				-- This is the default handler (optional).
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities
					})
				end,
			}
		})

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				end
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({select = true}),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources(
				{
					{name = "nvim_lsp"},
					{name = "luasnip"}, -- For luasnip users.
				},
				{
					{name = "buffer"},
				}
			)
		})

		vim.diagnostic.config({
			upadate_in_insert = true,
			float = {
				focusable = false,
				style = "minimal",
				source = "always",
				header = "",
				prefix = ""
			}
		})
	end
}
