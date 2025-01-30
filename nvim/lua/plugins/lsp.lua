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
	dependencies = "hrsh7th/cmp-nvim-lsp",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		require("lspconfig").clangd.setup({ capabilities = capabilities })
	end
}
