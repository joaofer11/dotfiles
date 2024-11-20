return function()
        local lspconfig = require("lspconfig") 
        local keymap = vim.keymap.set

        vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                        local client = vim.lsp.get_client_by_id(args.data.client_id)


                        -- See :lua =vim.lsp.get_clients()[1].server_capabilities

                        -- Rename keymap
                        if client.supports_method("renameProvider/prepareProvider") then
                                keymap("n", "<Leader>rn", vim.lsp.buf.rename)
                        end
                        
                        -- Goto definition
                        if client.supports_method("definitionProvider") then
                                keymap("n", "gd", vim.lsp.buf.definition)
                        end

                        -- Goto declaration/interface
                        if client.supports_method("declarationProvider") then
                                keymap("n", "gi", vim.lsp.buf.declaration)
                        end
                end,
        })

        lspconfig.clangd.setup({
                on_init = function(client, _)
                        -- turn off semantic tokens
                        client.server_capabilities.semanticTokensProvider = nil
                end,
        })
end
