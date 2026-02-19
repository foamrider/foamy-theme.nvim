local M = {}

M.config = {
	transparent = true,
	italic_comments = true,
	italic_keywords = false,
	bold_statements = false,
	terminal_colors = true,
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
	if vim.g.colors_name then
		vim.cmd.highlight("clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd.syntax("reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "foamy"

	local p = require("foamy.palette")
	local opts = M.config

	-- Collect highlights from all group modules
	local highlights = {}
	for _, mod in ipairs({
		"foamy.groups.base",
		"foamy.groups.syntax",
		"foamy.groups.treesitter",
		"foamy.groups.lsp",
		"foamy.groups.plugins",
	}) do
		local groups = require(mod)
		if type(groups) == "function" then
			groups = groups(p, opts)
		end
		highlights = vim.tbl_deep_extend("force", highlights, groups)
	end

	-- Apply all highlights
	for name, hl in pairs(highlights) do
		if type(hl) == "string" then
			hl = { link = hl }
		end
		vim.api.nvim_set_hl(0, name, hl)
	end

	-- Terminal colors
	if opts.terminal_colors then
		vim.g.terminal_color_0 = p.bg1
		vim.g.terminal_color_1 = p.red
		vim.g.terminal_color_2 = p.green
		vim.g.terminal_color_3 = p.yellow
		vim.g.terminal_color_4 = p.blue
		vim.g.terminal_color_5 = p.purple
		vim.g.terminal_color_6 = p.cyan
		vim.g.terminal_color_7 = p.fg6
		vim.g.terminal_color_8 = p.fg0
		vim.g.terminal_color_9 = p.ui_red
		vim.g.terminal_color_10 = p.ui_green
		vim.g.terminal_color_11 = p.ui_yellow
		vim.g.terminal_color_12 = p.ui_blue
		vim.g.terminal_color_13 = p.ui_purple
		vim.g.terminal_color_14 = p.ui_cyan
		vim.g.terminal_color_15 = p.fg6
	end
end

return M
