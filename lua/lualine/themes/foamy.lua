local p = require("foamy.palette")

return {
	normal = {
		a = { bg = p.ui_blue, fg = p.bg1, gui = "bold" },
		b = { bg = p.bg4, fg = p.purple },
		c = { bg = p.bg1, fg = p.fg5 },
	},
	insert = {
		a = { bg = p.ui_green, fg = p.bg1, gui = "bold" },
	},
	command = {
		a = { bg = p.ui_yellow, fg = p.bg1, gui = "bold" },
	},
	visual = {
		a = { bg = p.ui_purple, fg = p.bg1, gui = "bold" },
	},
	replace = {
		a = { bg = p.ui_red, fg = p.bg1, gui = "bold" },
	},
	terminal = {
		a = { bg = p.ui_green, fg = p.bg1, gui = "bold" },
	},
	inactive = {
		a = { bg = p.bg1, fg = p.fg1, gui = "bold" },
		b = { bg = p.bg1, fg = p.fg1 },
		c = { bg = p.bg1, fg = p.fg1 },
	},
}
