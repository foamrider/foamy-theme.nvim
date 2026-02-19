-- Foamy bufferline integration
-- Provides explicit highlights so bufferline doesn't derive from Normal bg.
-- Usage in bufferline config:
--   highlights = require("foamy.bufferline").get()
local M = {}

function M.get()
	local p = require("foamy.palette")
	local opts = require("foamy").config
	local transparent = opts.transparent

	local active_bg = transparent and "NONE" or p.bg3
	local inactive_bg = transparent and "NONE" or p.bg2
	local fill_bg = transparent and "NONE" or p.bg0
	local separator_fg = transparent and p.fg0 or p.bg0

	return {
		fill = { bg = fill_bg },

		-- Unfocused (background) buffers
		background = { fg = p.fg3, bg = inactive_bg },
		separator = { fg = separator_fg, bg = inactive_bg },
		close_button = { fg = p.fg3, bg = inactive_bg },
		modified = { fg = p.fg3, bg = inactive_bg },
		duplicate = { fg = p.fg3, bg = inactive_bg, italic = true },
		pick = { fg = p.ui_red, bg = inactive_bg, bold = true, italic = true },

		-- Visible (in another split)
		buffer_visible = { fg = p.fg3, bg = inactive_bg },
		separator_visible = { fg = separator_fg, bg = inactive_bg },
		close_button_visible = { fg = p.fg3, bg = inactive_bg },
		modified_visible = { fg = p.fg3, bg = inactive_bg },
		duplicate_visible = { fg = p.fg3, bg = inactive_bg, italic = true },
		pick_visible = { fg = p.ui_red, bg = inactive_bg, bold = true, italic = true },

		-- Selected (active buffer)
		buffer_selected = { fg = p.fg6, bg = active_bg, bold = true },
		separator_selected = { fg = separator_fg, bg = active_bg },
		close_button_selected = { fg = p.fg6, bg = active_bg },
		modified_selected = { fg = p.ui_green, bg = active_bg },
		duplicate_selected = { fg = p.fg6, bg = active_bg, italic = true },
		indicator_selected = { fg = p.ui_blue, bg = active_bg },
		pick_selected = { fg = p.ui_red, bg = active_bg, bold = true, italic = true },

		-- Error diagnostics
		error = { fg = p.fg3, bg = inactive_bg, sp = p.ui_red },
		error_visible = { fg = p.fg3, bg = inactive_bg },
		error_selected = { fg = p.ui_red, bg = active_bg, bold = true },
		error_diagnostic = { fg = p.fg3, bg = inactive_bg },
		error_diagnostic_visible = { fg = p.fg3, bg = inactive_bg },
		error_diagnostic_selected = { fg = p.ui_red, bg = active_bg, bold = true },

		-- Warning diagnostics
		warning = { fg = p.fg3, bg = inactive_bg, sp = p.ui_yellow },
		warning_visible = { fg = p.fg3, bg = inactive_bg },
		warning_selected = { fg = p.ui_yellow, bg = active_bg, bold = true },
		warning_diagnostic = { fg = p.fg3, bg = inactive_bg },
		warning_diagnostic_visible = { fg = p.fg3, bg = inactive_bg },
		warning_diagnostic_selected = { fg = p.ui_yellow, bg = active_bg, bold = true },

		-- Info diagnostics
		info = { fg = p.fg3, bg = inactive_bg, sp = p.ui_blue },
		info_visible = { fg = p.fg3, bg = inactive_bg },
		info_selected = { fg = p.ui_blue, bg = active_bg, bold = true },
		info_diagnostic = { fg = p.fg3, bg = inactive_bg },
		info_diagnostic_visible = { fg = p.fg3, bg = inactive_bg },
		info_diagnostic_selected = { fg = p.ui_blue, bg = active_bg, bold = true },

		-- Hint diagnostics
		hint = { fg = p.fg3, bg = inactive_bg, sp = p.ui_cyan },
		hint_visible = { fg = p.fg3, bg = inactive_bg },
		hint_selected = { fg = p.ui_cyan, bg = active_bg, bold = true },
		hint_diagnostic = { fg = p.fg3, bg = inactive_bg },
		hint_diagnostic_visible = { fg = p.fg3, bg = inactive_bg },
		hint_diagnostic_selected = { fg = p.ui_cyan, bg = active_bg, bold = true },

		-- Tabs
		tab = { fg = p.fg3, bg = inactive_bg },
		tab_selected = { fg = p.fg6, bg = active_bg, bold = true },
		tab_separator = { fg = separator_fg, bg = inactive_bg },
		tab_separator_selected = { fg = separator_fg, bg = active_bg },
		tab_close = { fg = p.fg3, bg = inactive_bg },

		-- Numbers
		numbers = { fg = p.fg3, bg = inactive_bg },
		numbers_visible = { fg = p.fg3, bg = inactive_bg },
		numbers_selected = { fg = p.fg6, bg = active_bg, bold = true },

		-- Offset separator
		offset_separator = { fg = separator_fg, bg = inactive_bg },

		-- Truncation markers
		trunc_marker = { fg = p.fg3, bg = fill_bg },
	}
end

return M
