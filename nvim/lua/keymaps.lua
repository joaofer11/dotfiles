-- Map leader key to <SPC>
vim.g.mapleader = " ";
vim.g.maplocalleader = " ";

vim.keymap.set({"i", "v", "x"}, "fj", "<ESC>", {silent = true});
vim.keymap.set({"i", "v", "x"}, "FJ", "<ESC>", {silent = true});
vim.keymap.set("t", "fj", "<C-\\><C-n>", {silent = true})
vim.keymap.set("t", "FJ", "<C-\\><C-n>", {silent = true})

-- <=============== NORMAL ===============>
vim.keymap.set("n", "<leader>w", ":w<CR>");
vim.keymap.set("n", "<leader>q", ":q<CR>");

vim.keymap.set("n", "<C-h>", "<C-w>h", {silent = true});
vim.keymap.set("n", "<C-j>", "<C-w>j", {silent = true});
vim.keymap.set("n", "<C-k>", "<C-w>k", {silent = true});
vim.keymap.set("n", "<C-l>", "<C-w>l", {silent = true});

vim.keymap.set("n", "<A-k>", ":resize +2<CR>", {silent = true});
vim.keymap.set("n", "<A-j>", ":resize -2<CR>", {silent = true});
vim.keymap.set("n", "<A-h>", ":vertical resize +2<CR>", {silent = true});
vim.keymap.set("n", "<A-l>", ":vertical resize -2<CR>", {silent = true});

-- Paste without yanking to register ring.
-- Useful when pasting at a selected region.
vim.keymap.set("n", "<leader>p", "\"_", {silent = true});
vim.keymap.set("n", "<leader>e", vim.cmd.Explore, {silent = true});
vim.keymap.set("n", "<leader>l", vim.cmd.nohlsearch, {silent = true})

vim.keymap.set("n", "<leader>bh", ":bprevious<CR>", {silent = true});
vim.keymap.set("n", "<leader>bl", ":bnext<CR>", {silent = true});
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>");

-- <=============== VISUAL ===============>
vim.keymap.set("v", "<", "<gv", {silent = true});
vim.keymap.set("v", ">", ">gv", {silent = true});

vim.keymap.set("v", "J", ":'<,'>move '>+1<CR>gv=gv", {silent = true});
vim.keymap.set("v", "K", ":'<,'>move '<-2<CR>gv=gv", {silent = true});
