local generic_group = vim.api.nvim_create_augroup("generic_group", {})

require("settings.options")
require("settings.keymaps")
require("settings.statusline")
require("settings.lazy")

-- Stolen from the primeagen.
--
-- This trim the spaces at end of each line,
-- before the buffer is saved.
vim.api.nvim_create_autocmd("BufWritePre", {
        group = generic_group,
        pattern = "*",
        command = [[%s/\s\+$//e]]
})
