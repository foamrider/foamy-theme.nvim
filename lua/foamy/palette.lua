-- Foamy color palette
-- Based on astrodark with adjustments for transparency and plugin compatibility.

return {
	none = "NONE",

	-- Backgrounds (dark to light)
	bg0 = "#0D0F13", -- darkest (fill, separators)
	bg1 = "#111317", -- tabline, statusline
	bg2 = "#16181D", -- inactive windows, tool panels
	bg3 = "#1A1D23", -- editor base background
	bg4 = "#1E222A", -- cursorline, secondary sections
	bg5 = "#23272F", -- highlight, visual selection light
	bg6 = "#26343F", -- selection

	-- Foregrounds (dim to bright)
	fg0 = "#3A3E47", -- non-text, indent guides, borders
	fg1 = "#494D56", -- text inactive
	fg2 = "#595C66", -- muted text
	fg3 = "#696C76", -- comments
	fg4 = "#797D87", -- winbar
	fg5 = "#9B9FA9", -- ui text
	fg6 = "#ADB0BB", -- default text (Normal fg)

	-- Syntax colors
	red = "#FF838B",
	orange = "#F5983A",
	yellow = "#DFAB25",
	green = "#87C05F",
	cyan = "#4AC2B8",
	blue = "#5EB7FF",
	purple = "#DD97F1",

	-- UI / diagnostic colors (slightly more muted than syntax)
	ui_red = "#F8747E",
	ui_orange = "#EB8332",
	ui_yellow = "#D09214",
	ui_green = "#75AD47",
	ui_cyan = "#00B298",
	ui_blue = "#50A4E9",
	ui_purple = "#CC83E3",

	-- Git
	git_add = "#87C05F",
	git_change = "#F5983A",
	git_delete = "#FF838B",

	-- Diff backgrounds
	diff_add = "#1E3326",
	diff_change = "#2A2517",
	diff_delete = "#331A1E",
	diff_text = "#2A3A1E",
}
