-- See `:help options`

-- Netrw settings
vim.g.netrw_banner = 0;
vim.g.netrw_preview = 1;
vim.g.netrw_liststyle = 3;
vim.g.netrw_winsize = 30;

-- Make the cursor block shaped and blink.
vim.opt.guicursor = [[a:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]]

-- Enables just one status line across all windows.
vim.opt.laststatus = 3;

vim.opt.number = true;
vim.opt.relativenumber = true;
vim.opt.wrap = false;

vim.opt.termguicolors = true;

-- Create backup files?
vim.opt.backup = false;

vim.opt.fileencoding = "utf-8";

-- Use system clipboard instead registers.
vim.opt.clipboard:append("unnamedplus");

-- Keep search hightlighted?
vim.opt.hlsearch = true;
-- Match search in real time typing?
vim.opt.incsearch = true;
-- Ignore case on searching?
vim.opt.ignorecase = true;

-- Display current mode?
vim.opt.showmode = false;

-- Allow mouse for all modes.
vim.opt.mouse = "a";

-- Use spaces for indenting?
vim.opt.expandtab = true;
-- Num of space chars a tab is equivalent.
vim.opt.tabstop = 8;
-- Num of space chars to be inserted.
vim.opt.shiftwidth = 8;

vim.opt.smartcase = true;
vim.opt.smartindent = true;
vim.opt.autoindent = true;

vim.opt.splitbelow = true;
vim.opt.splitright = true;

-- Create swap files?
vim.opt.swapfile = false;

-- Enable persistent undo tree?
vim.opt.undofile = true;

-- Delay to break a map sequence (in ms).
vim.opt.timeoutlen = 1000;

-- Delay to start completion (in ms).
vim.opt.updatetime = 50;

-- Prevents the file being lost if vim fails to write the buffer.
vim.opt.writebackup = true;

-- Highlight the cursorline.
vim.opt.cursorline = true;

-- Draw delimiter at the given column ranges.
vim.opt.colorcolumn = {"72", "80"};

-- Draw signs at columns when available.
vim.opt.signcolumn = "yes"; -- (yes = always)

vim.opt.scrolloff = 999;
vim.opt.sidescrolloff = 4;
