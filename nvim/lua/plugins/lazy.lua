local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
        local lazyrepo = "https://github.com/folke/lazy.nvim.git"
        local out = vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath})

        if vim.v.shell_error ~= 0 then
                vim.api.nvim_echo({
                        {"Failed to clone lazy.nvim:\n", "ErrorMsg"},
                        {out, "WarningMsg"},
                        {"\nPress any key to exit..."},
                }, true, {})
                vim.fn.getchar()
                os.exit(1)
        end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
        { -- LSP
                "neovim/nvim-lspconfig",
                config = require("plugins.lsp-config")
        },
        { -- Tree-sitter
                "nvim-treesitter/nvim-treesitter",
                config = require("plugins.treesitter")
        },
        { -- Telescope
                "nvim-telescope/telescope.nvim",
                tag = "0.1.8",
                dependencies = {"nvim-lua/plenary.nvim"},
                config = require("plugins.telescope")
        },
        { -- Trouble
                "folke/trouble.nvim",
                config = require("plugins.trouble")
        },
})