vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "-", vim.cmd.Explore)

vim.keymap.set({"i", "v", "x"}, "fj", "<ESC>")
vim.keymap.set({"i", "v", "x"}, "FJ", "<ESC>")

vim.keymap.set("n", "<A-K>", ":resize +4<cr>")
vim.keymap.set("n", "<A-J>", ":resize -4<cr>")
vim.keymap.set("n", "<A-H>", ":vertical resize +4<cr>")
vim.keymap.set("n", "<A-L>", ":vertical resize -4<cr>")

vim.keymap.set({"x", "v"}, "<leader>p", [["_p]])
vim.keymap.set({"x", "v"}, "<leader>d", [["_d]])

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "J", ":move '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":move '<-2<cr>gv=gv")
