return {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        opts = {styles = {enabled = false}},
        config = function(_, opts)
                vim.o.background = "dark"

                require("solarized").setup(opts)

                vim.cmd.colorscheme("solarized")
        end
}
