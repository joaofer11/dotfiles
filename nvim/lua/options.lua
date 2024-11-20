-- See `:help options`
-- Netrw explorer settings
vim.g.netrw_keepdir = 0;
vim.g.netrw_winsize = 20;
vim.g.netrw_liststyle = 0;
vim.g.netrw_banner = 0;

-- Make the cursor block shaped and blink
vim.opt.guicursor = [[a:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]]

--vim.opt.list = true;
--vim.opt.listchars:append("space:·")
vim.opt.laststatus = 3
vim.opt.wrap = false;                            -- Don't wrap lines
vim.opt.termguicolors = true;                    -- Termguicolors
vim.opt.number = true;                           -- Display line number
vim.opt.relativenumber = true;                   -- Display relative line number
vim.opt.backup = false;                          -- Don't create backup files
vim.opt.fileencoding = "utf-8";                  -- File encoding
vim.opt.clipboard:append("unnamedplus");         -- Allow neovim to access system clipboard
vim.opt.completeopt = { "menuone", "noselect" }; -- Complete opt
vim.opt.hlsearch = true;                         -- Keep highlight on after search
vim.opt.incsearch = true;                        -- Incremental search
vim.opt.ignorecase = true;                       -- Ignore case on searching
vim.opt.mouse = "a";                             -- Allow mouse for all modes
vim.opt.showmode = false;                        -- Do not display current mode
vim.opt.smartcase = true;                        -- Smart case
vim.opt.smartindent = true;                      -- Aware indentations for LF inserts
vim.opt.expandtab = true;                        -- Use spaces for indenting
vim.opt.tabstop = 8;                             -- Num of space characters per tab
vim.opt.shiftwidth = 8;                          -- Space per indentation level
vim.opt.autoindent = true;                       -- Autoindent
vim.opt.splitbelow = true;                       -- Split window below
vim.opt.splitright = true;                       -- Split window right
vim.opt.swapfile = false;                        -- Do not create swap file
vim.opt.undofile = true;                         -- Enable persistent undo tree
vim.opt.timeoutlen = 1000;                       -- Delay to break a map sequence (in ms)
vim.opt.updatetime = 50;                         -- Delay to start completion (in ms)
vim.opt.writebackup = true;                      -- Enable backup file
-- vim.opt.colorcolumn = {"72", "80"};              -- Draw column boundaries at ranges
vim.opt.signcolumn = "yes";                      -- Draw signs at columns when available
vim.opt.scrolloff = 999;                         -- Always center the cursor line when scrolling vertically
vim.opt.sidescrolloff = 999;                     -- 8 column room left when scrolling horizontally

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "WinEnter"}, {
        command = "set cursorline"
})

vim.api.nvim_create_autocmd({"BufLeave", "BufWinLeave", "WinLeave"}, {
        command = "set nocursorline"
})
