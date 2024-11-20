return function()
        local ts = require("nvim-treesitter.configs")

        ts.setup({
                ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"},

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                highlight = { enable = true },

                incremental_selection = {
                        enable = true,
                        keymaps = {
                                init_selection = "<Leader>ti",
                                node_incremental = "<Leader>tn",
                                node_decremental = "<Leader>tp",
                                scope_incremental = "<Leader>ts"
                        }
                },
        })
end
