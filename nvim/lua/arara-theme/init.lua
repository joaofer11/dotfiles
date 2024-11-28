local hsl = require("arara-theme.hsl")

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
end

vim.g.colors_name = "ease-blue"

-- Colors:
local c = {
        black = hsl(240, 10, 7),
        ["black+1"] = hsl(238, 10, 10),
        ["black+2"] = hsl(238, 10, 18),
        ["black+3"] = hsl(237, 10, 24),

        white = hsl(200, 3, 90),
        ["white+1"] = hsl(199, 3, 96),

        yellow = hsl(52, 95, 51),
        brown = hsl(20, 40, 60),
        blue = hsl(192, 87, 53),
        magenta = hsl(303, 39, 67),
        green = hsl(110, 60, 56),
        quartz = hsl(150, 10, 62),
        orange = hsl(20, 90, 54),
        red = hsl(355, 90, 55),
}

local groups = {
        -- StatusLineNC = { bg = hsl(165, 25, 6), fg = c.white },
        -- Whitespace = { fg = hsl(0, 0, 18) },

        -- Editor (:h highlight-groups)
        Normal       = { bg = c.black, fg = c.white },
        EndOfBuffer  = { bg = c.black, fg = c["black+3"] },
        StatusLine   = { bg = c["black+1"], fg = white },
        Visual       = { bg = c["black+3"] },
        Search       = { bg = c["black+2"], fg = c.blue },
        IncSearch    = { bg = c["black+2"], fg = c.blue },
        CurSearch    = { bg = c["black+2"], fg = c.blue },
        Cursor       = { bg = c.blue },
        CursorLine   = { bg = c["black+1"] },
        ColorColumn  = { bg = c["black+1"] },
        LineNr       = { fg = c["black+3"] },
        CursorLineNr = { fg = c.blue },
        MatchParen   = { fg = c.blue },
        Directory    = { fg = c.blue },
        MoreMsg      = { fg = c.blue },
        Question     = { fg = c.blue },
        QuickFixLine = { fg = c.blue },
        Title        = { fg = c["white+1"] },
        DiffAdd      = { bg = hsl(125, 40, 12), fg = hsl(125, 10, 71) },
        DiffChange   = { bg = hsl(25, 50, 12), fg = hsl(25, 10, 71) },
        DiffText     = { bg = hsl(35, 50, 26), fg = hsl(35, 50, 3) },
        DiffDelete   = { bg = hsl(355, 50, 12), fg = hsl(355, 10, 71) },
        
        -- Netrw
        netrwTreeBar  = { fg = c["black+3"] },
        netrwClassify = { fg = c.blue },
        netrwExe      = { fg = c.green },

        -- Syntax (:h group-name)
        Comment    = { fg = c.brown },
        Identifier = { fg = white },
        Function   = { fg = c.white },
        Statement  = { fg = c.blue },
        Constant   = { fg = c.blue },
        String     = { fg = c.green },
        Character  = { fg = c.green },
        Number     = { fg = c.magenta },
        Boolean    = { fg = c.magenta },
        Float      = { fg = c.magenta },
        Operator   = { fg = c.white },
        PreProc    = { fg = c.white },
        Type       = { fg = c.white },
        Delimiter  = { fg = c.white },
        Special    = { fg = c.magenta },

        -- Tree-sitter (:h treesitter-highlight)
        ["@function.builtin"]           = { fg = c.white },
        ["@function.call"]              = { fg = c.white },
        ["@variable"]                   = { fg = c.white },
        ["@variable.builtin"]           = { fg = c.white },
        ["@variable.parameter.builtin"] = { fg = c.white },
        ["@constant"]                   = { fg = c.magenta },
        ["@constant.builtin"]           = { fg = c.magenta },
        ["@label"]                      = { fg = c.white },
        ["@constructor"]                = { fg = c.white },
        ["@type.builtin"]               = { link = "Type" },
        ["@keyword.directive"]          = { fg = c.white },
        ["@keyword.import.c"]           = { fg = c.white },
}

for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
end
