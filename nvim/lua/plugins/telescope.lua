return function()
        local builtin = require("telescope.builtin");
        local opts = {noremap = true,silent = true};

        vim.keymap.set("n", "<leader>ff", builtin.find_files, opts);
        vim.keymap.set("n", "<leader>fb", builtin.buffers, opts);
        vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, opts);
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts);
end
