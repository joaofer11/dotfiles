return {
        "folke/trouble.nvim",
        config = function()
                require("trouble").setup({
                        auto_close = true,
                        multiline = false,
                        focus = true,
                        icons = {}
                })

                vim.keymap.set("n", "<leader>d", ":Trouble diagnostics toggle<CR>")
        end
}