local lspgroup = vim.api.nvim_create_augroup("LspGroup", {})

vim.api.nvim_create_autocmd("LspAttach", {
	pattern = "*",
	group = lspgroup,
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		client.server_capabilities.semanticTokensProvider = nil
		vim.diagnostic.enable(false)
		vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
	end,
});

return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.clangd.setup({})
		lspconfig.ts_ls.setup({})
	end
}
