function config_statusline()
        return "  "
		.. "%F"
                .. "        "
                .. "%c:%l %p%%"
                .. "%="
end;

vim.opt.statusline = "%{%v:lua.config_statusline()%}"
