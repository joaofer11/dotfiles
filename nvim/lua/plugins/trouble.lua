return function()
        require("trouble").setup({
                auto_close = true,
                multiline = false,
                focus = true,
                icons = {
                        folder_open = "🞃",
                        folder_closed = "🞂",
                        indent = {
                                fold_open = "🞃",
                                fold_closed = "🞂",
                        }
                }
        })

        vim.diagnostic.disable()

        vim.keymap.set("n", "<leader>dd", ":Trouble diagnostics toggle<CR>")
        vim.keymap.set("n", "<leader>db", ":Trouble diagnostics toggle filter.buf=0<CR>")
end
