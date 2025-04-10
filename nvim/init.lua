local generic_group = vim.api.nvim_create_augroup("generic_group", {})
local mapkey = vim.keymap.set

vim.g.netrw_banner = 0
vim.g.netrw_preview = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30

vim.opt.guicursor = ""
vim.opt.laststatus = 0
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.fileencoding = "utf-8"
vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.showmode = true
vim.opt.mouse = "a"
vim.opt.expandtab = false
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.timeoutlen = 1000
vim.opt.updatetime = 50
vim.opt.writebackup = true
vim.opt.cursorline = true
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 0
-- vim.opt.colorcolumn = {"72", "80", "120"}
-- vim.opt.scrolljump = -50

-- Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
mapkey("n", "-", vim.cmd.Explore)
mapkey({"i", "v", "x"}, "fj", "<ESC>")
mapkey({"i", "v", "x"}, "FJ", "<ESC>")
mapkey("i", "<C-d>", "<Del>")
mapkey("i", "<M-d>", "<C-[>ldei")
mapkey("n", "<A-K>", ":resize +4<cr>")
mapkey("n", "<A-J>", ":resize -4<cr>")
mapkey("n", "<A-H>", ":vertical resize +4<cr>")
mapkey("n", "<A-L>", ":vertical resize -4<cr>")
mapkey({"x", "v"}, "<leader>p", [["_p]])
mapkey({"x", "v"}, "<leader>d", [["_d]])
mapkey("v", "<", "<gv")
mapkey("v", ">", ">gv")
mapkey("v", "J", ":move '>+1<cr>gv=gv")
mapkey("v", "K", ":move '<-2<cr>gv=gv")

-- Miscellaneous
-- Before saving the buffer, remove any trailing spaces or tabs.
vim.api.nvim_create_autocmd("BufWritePre", {
	group = generic_group,
	pattern = "*",
	command = [[%s/\s\+$//e]]
})

require("plugin-manager")
