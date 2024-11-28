local function lsp_keymaps(e)
        local client = vim.lsp.get_client_by_id(e.data.client_id)

        -- See :lua =vim.lsp.get_clients()[1].server_capabilities

        -- Rename keymap
        if client.supports_method("textDocument/rename") then
                vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename)
        end

        -- Goto definition
        if client.supports_method("textDocument/definition") then
                vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        end
end

return function()
        local lspconfig = require("lspconfig") 

        vim.api.nvim_create_autocmd("LspAttach", { callback = lsp_keymaps })

        -- Clangd
        lspconfig.clangd.setup({
                cmd = {vim.loop.os_homedir() .. "/bin/clangd"},

                on_init = function(client, _)
                        -- Turn off semantic tokens.
                        client.server_capabilities.semanticTokensProvider = nil
                end,
        })
end
