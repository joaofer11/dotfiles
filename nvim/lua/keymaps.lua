vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({"i", "v", "x"}, "fj", "<ESC>")
vim.keymap.set({"i", "v", "x"}, "FJ", "<ESC>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- This is a nice keymap for shitty keyboards
vim.keymap.set("i", "<C-d>", "<Del>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<A-K>", ":resize +4<CR>")
vim.keymap.set("n", "<A-J>", ":resize -4<CR>")
vim.keymap.set("n", "<A-H>", ":vertical resize +4<CR>")
vim.keymap.set("n", "<A-L>", ":vertical resize -4<CR>")

-- Paste without yanking. Useful when pasting at a selected region.
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>e", vim.cmd.Explore)
vim.keymap.set("n", "<leader>l", vim.cmd.nohlsearch)

vim.keymap.set("n", "<leader>bh", ":bprevious<CR>")
vim.keymap.set("n", "<leader>bl", ":bnext<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "J", ":'<,'>move '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":'<,'>move '<-2<CR>gv=gv")
